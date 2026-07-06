<#
===============================================================================
File name:
    migrate_sdr2_to_sdr3_preserve_hierarchy.ps1

Purpose:
    Inspect an existing Vivado SDR2 project and create a clean SDR3 repository-style
    project directory WITHOUT flattening hierarchy.

Key points:
    - Preserves relative source hierarchy under rtl/, constraints/, bd/, ip/, etc.
    - Copies likely custom IP repositories under ip_repo/.
    - Generates Vivado 2024.2 wrapper and Tcl scripts.
    - Can create/build a Vivado project and generate a bitstream if the migrated
      sources, BD Tcl, constraints and IP repositories are complete.

Usage - inspection only:
    .\migrate_sdr2_to_sdr3_preserve_hierarchy.ps1 `
      -Sdr2Path "D:\Trivedi\2022p2\sdr2" `
      -Sdr3Path "D:\Trivedi\2022p2\sdr3"

Usage - actual migration:
    .\migrate_sdr2_to_sdr3_preserve_hierarchy.ps1 `
      -Sdr2Path "D:\Trivedi\2022p2\sdr2" `
      -Sdr3Path "D:\Trivedi\2022p2\sdr3" `
      -Proceed
===============================================================================
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Sdr2Path,

    [Parameter(Mandatory = $true)]
    [string]$Sdr3Path,

    [string]$VivadoBat = "D:\Vivado\Vivado\2024.2\bin\vivado.bat",

    [string]$TopModule = "t510_standalone_top",

    [switch]$Proceed,

    [switch]$Overwrite
)

$ErrorActionPreference = "Stop"

# -----------------------------------------------------------------------------
# Helper functions
# -----------------------------------------------------------------------------

function Write-Section($Text) {
    Write-Host ""
    Write-Host "==============================================================================='" -ForegroundColor Cyan
    Write-Host $Text -ForegroundColor Cyan
    Write-Host "==============================================================================='" -ForegroundColor Cyan
}

function Ensure-Dir($Path) {
    if (!(Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path | Out-Null
    }
}

function Relative-Path($Base, $Full) {
    $baseUri = New-Object System.Uri(($Base.TrimEnd('\') + '\'))
    $fullUri = New-Object System.Uri($Full)
    return [System.Uri]::UnescapeDataString($baseUri.MakeRelativeUri($fullUri).ToString()).Replace('/', '\')
}

function Is-GeneratedPath($FullName) {
    $p = $FullName.ToLowerInvariant()
    $generatedMarkers = @(
        "\.xil\",
        "\.cache\",
        "\.hw\",
        "\.ip_user_files\",
        "\.runs\",
        "\.sim\",
        "\.gen\",
        "\.os\",
        "\xsim.dir\",
        "\vivado_work\"
    )

    foreach ($m in $generatedMarkers) {
        if ($p.Contains($m)) {
            return $true
        }
    }
    return $false
}

function Find-SourceFiles($Root, $Patterns, [switch]$IncludeGenerated) {
    $result = @()

    foreach ($pat in $Patterns) {
        $items = Get-ChildItem -Path $Root -Recurse -File -Filter $pat -ErrorAction SilentlyContinue
        foreach ($i in $items) {
            if ($IncludeGenerated -or !(Is-GeneratedPath $i.FullName)) {
                $result += $i
            }
        }
    }

    return $result | Sort-Object FullName -Unique
}

function Copy-FilePreserveRelative($Src, $SrcRoot, $DstRoot) {
    if (!(Test-Path $Src)) {
        return
    }

    $rel = Relative-Path $SrcRoot $Src
    $dst = Join-Path $DstRoot $rel
    $dstDir = Split-Path $dst -Parent

    Ensure-Dir $dstDir

    if ((Test-Path $dst) -and (!$Overwrite)) {
        Write-Host "SKIP existing: $dst"
        return
    }

    Copy-Item $Src $dst -Force
    Write-Host "COPY: $rel"
}

function Copy-FilesPreserveRelative($Files, $SrcRoot, $DstRoot) {
    Ensure-Dir $DstRoot
    foreach ($f in $Files) {
        Copy-FilePreserveRelative $f.FullName $SrcRoot $DstRoot
    }
}

function Copy-DirectoryPreserveRelative($SrcDir, $SrcRoot, $DstRoot) {
    if (!(Test-Path $SrcDir)) {
        return
    }

    $rel = Relative-Path $SrcRoot $SrcDir
    $dstDir = Join-Path $DstRoot $rel

    if ((Test-Path $dstDir) -and (!$Overwrite)) {
        Write-Host "SKIP existing IP directory: $dstDir"
        return
    }

    Ensure-Dir (Split-Path $dstDir -Parent)
    Copy-Item $SrcDir $dstDir -Recurse -Force
    Write-Host "COPY DIR: $rel"
}

function Write-TextFile($Path, $Content) {
    $dir = Split-Path $Path -Parent
    Ensure-Dir $dir

    if ((Test-Path $Path) -and (!$Overwrite)) {
        Write-Host "SKIP existing generated file: $Path"
        return
    }

    Set-Content -Path $Path -Value $Content -Encoding UTF8
    Write-Host "WROTE: $Path"
}

function Write-AsciiFile($Path, $Content) {
    $dir = Split-Path $Path -Parent
    Ensure-Dir $dir

    if ((Test-Path $Path) -and (!$Overwrite)) {
        Write-Host "SKIP existing generated file: $Path"
        return
    }

    Set-Content -Path $Path -Value $Content -Encoding ASCII
    Write-Host "WROTE: $Path"
}

function Find-CustomIpDirs($Root) {
    $componentFiles = Find-SourceFiles $Root @("component.xml")
    $dirs = @()

    foreach ($cf in $componentFiles) {
        $dir = Split-Path $cf.FullName -Parent
        if (!(Is-GeneratedPath $dir)) {
            $dirs += Get-Item $dir
        }
    }

    return $dirs | Sort-Object FullName -Unique
}

# -----------------------------------------------------------------------------
# Validate input
# -----------------------------------------------------------------------------

if (!(Test-Path $Sdr2Path)) {
    throw "SDR2 project path does not exist: $Sdr2Path"
}

$Sdr2Path = (Resolve-Path $Sdr2Path).Path

# -----------------------------------------------------------------------------
# Inspect SDR2
# -----------------------------------------------------------------------------

Write-Section "Inspecting SDR2 Vivado Project"

$xprFiles      = Find-SourceFiles $Sdr2Path @("*.xpr") -IncludeGenerated
$bdFiles       = Find-SourceFiles $Sdr2Path @("*.bd")
$bdTclFiles    = Find-SourceFiles $Sdr2Path @("*bd*.tcl", "*_bd.tcl", "*export*.tcl")
$tclFiles      = Find-SourceFiles $Sdr2Path @("*.tcl")
$xdcFiles      = Find-SourceFiles $Sdr2Path @("*.xdc")
$hdlFiles      = Find-SourceFiles $Sdr2Path @("*.v", "*.sv", "*.vh", "*.vhd", "*.vhdl")
$xciFiles      = Find-SourceFiles $Sdr2Path @("*.xci")
$dataFiles     = Find-SourceFiles $Sdr2Path @("*.coe", "*.mem", "*.dat", "*.hex", "*.mif")
$simFiles      = Find-SourceFiles $Sdr2Path @("*.wcfg", "*.do")
$cFiles        = Find-SourceFiles $Sdr2Path @("*.c", "*.h", "*.cpp", "*.hpp")
$pyFiles       = Find-SourceFiles $Sdr2Path @("*.py")
$docFiles      = Find-SourceFiles $Sdr2Path @("*.md", "*.txt", "*.pdf", "*.drawio", "*.png", "*.jpg", "*.jpeg")
$logRptFiles   = Find-SourceFiles $Sdr2Path @("runme.log", "*.rpt") -IncludeGenerated
$customIpDirs  = Find-CustomIpDirs $Sdr2Path

Write-Host "Source SDR2 path : $Sdr2Path"
Write-Host "Target SDR3 path : $Sdr3Path"
Write-Host "Vivado 2024.2    : $VivadoBat"
Write-Host "Top module       : $TopModule"
Write-Host ""
Write-Host "Detected files/directories, generated folders excluded except logs/reports:"
Write-Host ("  XPR files          : {0}" -f $xprFiles.Count)
Write-Host ("  BD files           : {0}" -f $bdFiles.Count)
Write-Host ("  BD Tcl candidates  : {0}" -f $bdTclFiles.Count)
Write-Host ("  Tcl files          : {0}" -f $tclFiles.Count)
Write-Host ("  XDC files          : {0}" -f $xdcFiles.Count)
Write-Host ("  HDL files          : {0}" -f $hdlFiles.Count)
Write-Host ("  XCI files          : {0}" -f $xciFiles.Count)
Write-Host ("  Data/COE/MEM files : {0}" -f $dataFiles.Count)
Write-Host ("  Sim script files   : {0}" -f $simFiles.Count)
Write-Host ("  C/C++ files        : {0}" -f $cFiles.Count)
Write-Host ("  Python files       : {0}" -f $pyFiles.Count)
Write-Host ("  Docs/images        : {0}" -f $docFiles.Count)
Write-Host ("  Logs/reports       : {0}" -f $logRptFiles.Count)
Write-Host ("  Custom IP dirs     : {0}" -f $customIpDirs.Count)

Write-Host ""
Write-Host "Vivado project files:"
foreach ($f in $xprFiles) { Write-Host "  $((Relative-Path $Sdr2Path $f.FullName))" }

Write-Host ""
Write-Host "Block Design files:"
foreach ($f in $bdFiles) { Write-Host "  $((Relative-Path $Sdr2Path $f.FullName))" }

Write-Host ""
Write-Host "Constraint files:"
foreach ($f in $xdcFiles) { Write-Host "  $((Relative-Path $Sdr2Path $f.FullName))" }

Write-Host ""
Write-Host "Custom IP repository directories detected by component.xml:"
foreach ($d in $customIpDirs) { Write-Host "  $((Relative-Path $Sdr2Path $d.FullName))" }

if (!$Proceed) {
    Write-Host ""
    Write-Host "Inspection complete. No files copied because -Proceed was not provided." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Run again with -Proceed to create SDR3:"
    Write-Host "  .\migrate_sdr2_to_sdr3_preserve_hierarchy.ps1 -Sdr2Path `"$Sdr2Path`" -Sdr3Path `"$Sdr3Path`" -Proceed"
    exit 0
}

# -----------------------------------------------------------------------------
# Create SDR3 directory structure
# -----------------------------------------------------------------------------

Write-Section "Creating SDR3 Directory Structure"

$dirs = @(
    "rtl",
    "bd",
    "constraints",
    "ip",
    "ip_repo",
    "data",
    "scripts",
    "sim",
    "sw",
    "sw\tools",
    "docs",
    "reports",
    "review_package",
    "vivado_work",
    "releases"
)

Ensure-Dir $Sdr3Path
foreach ($d in $dirs) { Ensure-Dir (Join-Path $Sdr3Path $d) }

Write-Host "Created directory structure under: $Sdr3Path"

# -----------------------------------------------------------------------------
# Copy files while preserving hierarchy
# -----------------------------------------------------------------------------

Write-Section "Copying Files While Preserving Relative Hierarchy"

Copy-FilesPreserveRelative $hdlFiles    $Sdr2Path (Join-Path $Sdr3Path "rtl")
Copy-FilesPreserveRelative $xdcFiles    $Sdr2Path (Join-Path $Sdr3Path "constraints")
Copy-FilesPreserveRelative $bdFiles     $Sdr2Path (Join-Path $Sdr3Path "bd")
Copy-FilesPreserveRelative $bdTclFiles  $Sdr2Path (Join-Path $Sdr3Path "bd")
Copy-FilesPreserveRelative $xciFiles    $Sdr2Path (Join-Path $Sdr3Path "ip")
Copy-FilesPreserveRelative $dataFiles   $Sdr2Path (Join-Path $Sdr3Path "data")
Copy-FilesPreserveRelative $tclFiles    $Sdr2Path (Join-Path $Sdr3Path "scripts\imported_from_sdr2")
Copy-FilesPreserveRelative $simFiles    $Sdr2Path (Join-Path $Sdr3Path "sim")
Copy-FilesPreserveRelative $cFiles      $Sdr2Path (Join-Path $Sdr3Path "sw")
Copy-FilesPreserveRelative $pyFiles     $Sdr2Path (Join-Path $Sdr3Path "sw\tools")
Copy-FilesPreserveRelative $docFiles    $Sdr2Path (Join-Path $Sdr3Path "docs")

foreach ($ipd in $customIpDirs) {
    Copy-DirectoryPreserveRelative $ipd.FullName $Sdr2Path (Join-Path $Sdr3Path "ip_repo")
}

# -----------------------------------------------------------------------------
# Generate Vivado Tcl scripts
# -----------------------------------------------------------------------------

Write-Section "Generating Vivado Tcl Scripts"

$versionGuard = @'
# -----------------------------------------------------------------------------
# Vivado version guard
# -----------------------------------------------------------------------------
set required_vivado_version "2024.2"
set actual_vivado_version [version -short]
puts "Vivado version detected: $actual_vivado_version"
if {$actual_vivado_version ne $required_vivado_version} {
    puts "ERROR: This project must be run with Vivado $required_vivado_version"
    puts "ERROR: Current Vivado version is $actual_vivado_version"
    exit 1
}

'@

$createProjectTcl = $versionGuard + @'
# -----------------------------------------------------------------------------
# create_project.tcl
# Creates a clean Vivado project from repository sources.
# -----------------------------------------------------------------------------

set project_name "sdr3"
set project_dir  "./vivado_work/sdr3"
set part_name    "xczu47dr-ffve1156-2-i"
set top_module   "__TOP_MODULE__"

proc collect_files {dir exts} {
    set result [list]
    if {![file exists $dir]} { return $result }
    foreach item [glob -nocomplain -directory $dir *] {
        if {[file isdirectory $item]} {
            set result [concat $result [collect_files $item $exts]]
        } else {
            set ext [string tolower [file extension $item]]
            if {[lsearch -exact $exts $ext] >= 0} {
                lappend result $item
            }
        }
    }
    return $result
}

proc collect_component_xml_dirs {dir} {
    set result [list]
    if {![file exists $dir]} { return $result }
    foreach item [glob -nocomplain -directory $dir *] {
        if {[file isdirectory $item]} {
            set cxml [file join $item component.xml]
            if {[file exists $cxml]} {
                lappend result $item
            }
            set result [concat $result [collect_component_xml_dirs $item]]
        }
    }
    return $result
}

file mkdir ./vivado_work
create_project $project_name $project_dir -part $part_name -force
set_property target_language Verilog [current_project]
set_property default_lib xil_defaultlib [current_project]

# Register custom IP repositories before sourcing BD Tcl.
set ip_repo_dirs [collect_component_xml_dirs ./ip_repo]
if {[llength $ip_repo_dirs] > 0} {
    puts "Registering custom IP repositories:"
    foreach d $ip_repo_dirs { puts "  $d" }
    set_property ip_repo_paths $ip_repo_dirs [current_project]
    update_ip_catalog
} else {
    puts "No custom IP repositories found under ./ip_repo"
}

# Add RTL recursively, preserving hierarchy in the repository.
set rtl_files [collect_files ./rtl {.v .sv .vh .vhd .vhdl}]
if {[llength $rtl_files] > 0} {
    puts "Adding RTL files: [llength $rtl_files]"
    add_files -norecurse $rtl_files
} else {
    puts "WARNING: No RTL files found under ./rtl"
}

# Add standalone XCI IP if any.
set xci_files [collect_files ./ip {.xci}]
if {[llength $xci_files] > 0} {
    puts "Adding XCI files: [llength $xci_files]"
    add_files -norecurse $xci_files
    catch { upgrade_ip [get_ips] }
    generate_target all [get_ips]
} else {
    puts "No standalone XCI files found under ./ip"
}

# Add constraints recursively.
set xdc_files [collect_files ./constraints {.xdc}]
if {[llength $xdc_files] > 0} {
    puts "Adding XDC files: [llength $xdc_files]"
    add_files -fileset constrs_1 -norecurse $xdc_files
} else {
    puts "WARNING: No XDC files found under ./constraints"
}

# Source BD Tcl recursively. Prefer exported BD Tcl; do not source helper/import scripts.
set bd_tcl_files [collect_files ./bd {.tcl}]
if {[llength $bd_tcl_files] > 0} {
    foreach bd_tcl $bd_tcl_files {
        puts "Sourcing BD Tcl: $bd_tcl"
        source $bd_tcl
    }
} else {
    puts "WARNING: No BD Tcl found under ./bd"
    puts "         Run export_bd_from_existing_project.tcl if only .bd is available."
}

# Generate and add BD wrapper, if a BD was created.
set bd_files [get_files -quiet *.bd]
if {[llength $bd_files] > 0} {
    foreach bd $bd_files {
        puts "Generating wrapper for BD: $bd"
        make_wrapper -files $bd -top
    }

    set wrapper_files [collect_files ./vivado_work {.v .vhd}]
    set wrapper_keep [list]
    foreach f $wrapper_files {
        if {[string match "*_wrapper.v" [file tail $f]] || [string match "*_wrapper.vhd" [file tail $f]]} {
            lappend wrapper_keep $f
        }
    }

    if {[llength $wrapper_keep] > 0} {
        puts "Adding generated BD wrapper files: [llength $wrapper_keep]"
        add_files -norecurse $wrapper_keep
    }
}

if {$top_module ne ""} {
    puts "Setting top module to: $top_module"
    catch { set_property top $top_module [current_fileset] } top_result
}

update_compile_order -fileset sources_1
validate_bd_design
save_project_as $project_name $project_dir -force
puts "Project creation complete: $project_dir"
'@

$createProjectTcl = $createProjectTcl.Replace("__TOP_MODULE__", $TopModule)
Write-AsciiFile (Join-Path $Sdr3Path "scripts\create_project.tcl") $createProjectTcl

$buildProjectTcl = $versionGuard + @'
# -----------------------------------------------------------------------------
# build_project.tcl
# Creates the project, runs synth, implementation and bitstream generation.
# -----------------------------------------------------------------------------

source scripts/create_project.tcl

puts "Launching synthesis..."
launch_runs synth_1 -jobs 8
wait_on_run synth_1
open_run synth_1
file mkdir ./reports
catch { report_timing_summary -file ./reports/post_synth_timing_summary.rpt }
catch { report_utilization    -file ./reports/post_synth_utilization.rpt }

puts "Launching implementation through bitstream..."
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
open_run impl_1
source scripts/export_reports.tcl

set bit_files [glob -nocomplain ./vivado_work/sdr3/sdr3.runs/impl_1/*.bit]
if {[llength $bit_files] > 0} {
    file mkdir ./releases/latest
    foreach b $bit_files {
        file copy -force $b ./releases/latest/[file tail $b]
        puts "Copied bitstream to releases/latest/[file tail $b]"
    }
} else {
    puts "WARNING: No .bit file found after implementation. Check impl_1 logs."
}

puts "Build completed."
'@
Write-AsciiFile (Join-Path $Sdr3Path "scripts\build_project.tcl") $buildProjectTcl

$exportReportsTcl = $versionGuard + @'
# -----------------------------------------------------------------------------
# export_reports.tcl
# -----------------------------------------------------------------------------
file mkdir ./reports
set rpt_dir "./reports"
catch { report_ip_status         -file "$rpt_dir/ip_status.rpt" }
catch { report_bd_address        -file "$rpt_dir/bd_address.rpt" }
catch { report_drc               -file "$rpt_dir/drc.rpt" }
catch { report_methodology       -file "$rpt_dir/methodology.rpt" }
catch { report_utilization       -file "$rpt_dir/utilization.rpt" }
catch { report_timing_summary    -file "$rpt_dir/timing_summary.rpt" }
catch { report_clock_interaction -file "$rpt_dir/clock_interaction.rpt" }
catch { report_cdc               -file "$rpt_dir/cdc.rpt" }
puts "Reports exported to $rpt_dir"
'@
Write-AsciiFile (Join-Path $Sdr3Path "scripts\export_reports.tcl") $exportReportsTcl

$exportBdTcl = $versionGuard + @'
# -----------------------------------------------------------------------------
# export_bd_from_existing_project.tcl
# Exports BD Tcl from an existing Vivado project using Vivado 2024.2.
# Usage:
#   vivado -mode batch -source scripts/export_bd_from_existing_project.tcl -tclargs <project.xpr>
# -----------------------------------------------------------------------------

if {[llength $argv] < 1} {
    puts "ERROR: Please pass Vivado project .xpr path as argument."
    exit 1
}

set xpr_path [lindex $argv 0]
if {![file exists $xpr_path]} {
    puts "ERROR: Project file not found: $xpr_path"
    exit 1
}

open_project $xpr_path
file mkdir ./bd
file mkdir ./reports
set bd_files [get_files -quiet *.bd]
if {[llength $bd_files] == 0} {
    puts "ERROR: No .bd file found in project."
    close_project
    exit 1
}

foreach bd $bd_files {
    open_bd_design $bd
    set bd_name [file rootname [file tail $bd]]
    set out_tcl "./bd/${bd_name}_exported.tcl"
    validate_bd_design
    write_bd_tcl -force -include_layout $out_tcl
    catch { report_ip_status  -file "./reports/${bd_name}_ip_status.rpt" }
    catch { report_bd_address -file "./reports/${bd_name}_bd_address.rpt" }
    puts "Exported BD Tcl: $out_tcl"
}
close_project
puts "BD export completed."
'@
Write-AsciiFile (Join-Path $Sdr3Path "scripts\export_bd_from_existing_project.tcl") $exportBdTcl

# -----------------------------------------------------------------------------
# Generate PowerShell wrapper
# -----------------------------------------------------------------------------

Write-Section "Generating Vivado 2024.2 PowerShell Wrapper"

$vivadoBatEscaped = $VivadoBat.Replace("'", "''")

$runVivadoPs1 = @"
param(
    [Parameter(Mandatory = `$true)]
    [ValidateSet("create", "build", "export_bd", "reports")]
    [string]`$Action,

    [string]`$OldProjectXpr = ""
)

`$ErrorActionPreference = "Stop"
`$VivadoBat = '$vivadoBatEscaped'

if (!(Test-Path `$VivadoBat)) {
    throw "Vivado 2024.2 not found at: `$VivadoBat"
}

Write-Host "Using Vivado 2024.2:"
Write-Host "  `$VivadoBat"

switch (`$Action) {
    "create" {
        & `$VivadoBat -mode batch -source scripts/create_project.tcl
    }
    "build" {
        & `$VivadoBat -mode batch -source scripts/build_project.tcl
    }
    "export_bd" {
        if (`$OldProjectXpr -eq "") {
            throw "For export_bd, provide -OldProjectXpr <path_to_sdr2.xpr>"
        }
        if (!(Test-Path `$OldProjectXpr)) {
            throw "Old project .xpr not found: `$OldProjectXpr"
        }
        & `$VivadoBat -mode batch -source scripts/export_bd_from_existing_project.tcl -tclargs `$OldProjectXpr
    }
    "reports" {
        & `$VivadoBat -mode batch -source scripts/export_reports.tcl
    }
}
"@
Write-AsciiFile (Join-Path $Sdr3Path "scripts\run_vivado_2024_2.ps1") $runVivadoPs1

# -----------------------------------------------------------------------------
# Generate repo support files
# -----------------------------------------------------------------------------

Write-Section "Generating Repository Support Files"

$gitignore = @'
.Xil/
*.jou
*.log
*.str
*.tmp
*.cache/
*.hw/
*.ip_user_files/
*.runs/
*.sim/
*.gen/
*.os/
vivado_work/
xsim.dir/
*.wdb
*.vcd
*.fst
*.bit
*.ltx
*.bin
*.mmi
*.elf
Debug/
Release/
_system/
.DS_Store
Thumbs.db
.vscode/
'@
Write-AsciiFile (Join-Path $Sdr3Path ".gitignore") $gitignore

$firstXpr = ""
if ($xprFiles.Count -gt 0) { $firstXpr = $xprFiles[0].FullName }

$readmeLines = @(
    "# SDR3 Vivado Project Repository",
    "",
    "This repository preserves the relative hierarchy of the source files copied from SDR2.",
    "",
    "Source SDR2 project:",
    $Sdr2Path,
    "",
    "Vivado version required: 2024.2",
    "Vivado wrapper path:",
    $VivadoBat,
    "Top module:",
    $TopModule,
    "",
    "## Main folders",
    "rtl/              HDL files with original relative hierarchy preserved",
    "bd/               Block Design files / exported BD Tcl",
    "constraints/      XDC files with original relative hierarchy preserved",
    "ip/               Standalone XCI IP files",
    "ip_repo/          Custom IP repositories detected by component.xml",
    "data/             COE/MEM/DAT/HEX/MIF files",
    "scripts/          Generated scripts and imported SDR2 Tcl files",
    "sim/              Simulation files",
    "sw/               Software/helper files",
    "docs/             Documentation/images",
    "vivado_work/      Generated Vivado project, ignored by Git",
    "releases/         Output bitstream copies",
    "",
    "## Commands",
    "Inspection was already done by the migration script. From this SDR3 directory:",
    "",
    "Create project:",
    ".\\scripts\\run_vivado_2024_2.ps1 -Action create",
    "",
    "Build bitstream:",
    ".\\scripts\\run_vivado_2024_2.ps1 -Action build",
    "",
    "Export BD Tcl from old project if needed:",
    ('.\\scripts\\run_vivado_2024_2.ps1 -Action export_bd -OldProjectXpr "' + $firstXpr + '"'),
    "",
    "## Important",
    "A bitstream can be generated from this structure only if all required HDL, BD Tcl, XDC, XCI/custom IP repositories and data files are present and compatible with Vivado 2024.2."
)
$readme = $readmeLines -join [Environment]::NewLine
Write-TextFile (Join-Path $Sdr3Path "README.md") $readme

$xprList = ($xprFiles | ForEach-Object { "- " + (Relative-Path $Sdr2Path $_.FullName) }) -join [Environment]::NewLine
$bdList  = ($bdFiles  | ForEach-Object { "- " + (Relative-Path $Sdr2Path $_.FullName) }) -join [Environment]::NewLine
$xdcList = ($xdcFiles | ForEach-Object { "- " + (Relative-Path $Sdr2Path $_.FullName) }) -join [Environment]::NewLine
$ipList  = ($customIpDirs | ForEach-Object { "- " + (Relative-Path $Sdr2Path $_.FullName) }) -join [Environment]::NewLine

$summaryLines = @(
    "# SDR2 to SDR3 Migration Summary",
    "",
    "Source: $Sdr2Path",
    "Target: $Sdr3Path",
    "Vivado: 2024.2",
    "Top module: $TopModule",
    "",
    "| Type | Count |",
    "|---|---:|",
    "| XPR files | $($xprFiles.Count) |",
    "| BD files | $($bdFiles.Count) |",
    "| BD Tcl candidates | $($bdTclFiles.Count) |",
    "| Tcl files | $($tclFiles.Count) |",
    "| XDC files | $($xdcFiles.Count) |",
    "| HDL files | $($hdlFiles.Count) |",
    "| XCI files | $($xciFiles.Count) |",
    "| Data files | $($dataFiles.Count) |",
    "| Custom IP dirs | $($customIpDirs.Count) |",
    "",
    "## Vivado Project Files",
    $xprList,
    "",
    "## Block Design Files",
    $bdList,
    "",
    "## XDC Files",
    $xdcList,
    "",
    "## Custom IP Repositories",
    $ipList,
    "",
    "## Next Steps",
    ('1. cd "' + $Sdr3Path + '"'),
    ('2. If BD Tcl is missing/stale: .\\scripts\\run_vivado_2024_2.ps1 -Action export_bd -OldProjectXpr "' + $firstXpr + '"'),
    "3. Create project: .\\scripts\\run_vivado_2024_2.ps1 -Action create",
    "4. Build bitstream: .\\scripts\\run_vivado_2024_2.ps1 -Action build"
)
$summary = $summaryLines -join [Environment]::NewLine
Write-TextFile (Join-Path $Sdr3Path "migration_summary.md") $summary

# -----------------------------------------------------------------------------
# Final check
# -----------------------------------------------------------------------------

Write-Section "Done"
Write-Host "SDR3 project folder created with preserved hierarchy:"
Write-Host "  $Sdr3Path"
Write-Host ""
Write-Host "Next commands:"
Write-Host "  cd `"$Sdr3Path`""
Write-Host "  .\scripts\run_vivado_2024_2.ps1 -Action create"
Write-Host "  .\scripts\run_vivado_2024_2.ps1 -Action build"
Write-Host ""
Write-Host "Bitstream output, if build succeeds:"
Write-Host "  releases\latest\*.bit"
Write-Host "  vivado_work\sdr3\sdr3.runs\impl_1\*.bit"
