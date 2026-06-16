/* Minimal metal/list.h stub for Linux userspace build */
#ifndef __METAL_LIST__H__
#define __METAL_LIST__H__
#include <stdlib.h>
#ifdef __cplusplus
extern "C" {
#endif
struct metal_list { struct metal_list *next, *prev; };
#define METAL_INIT_LIST(name) { .next = &name, .prev = &name }
#define METAL_DECLARE_LIST(name) struct metal_list name = METAL_INIT_LIST(name)
static inline void metal_list_init(struct metal_list *list) { list->prev = list; list->next = list; }
static inline int  metal_list_is_empty(struct metal_list *list) { return list->next == list; }
static inline void metal_list_del(struct metal_list *node) {
    node->next->prev = node->prev; node->prev->next = node->next;
    node->prev = node; node->next = node;
}
static inline struct metal_list *metal_list_first(struct metal_list *list) {
    return metal_list_is_empty(list) ? NULL : list->next;
}
#define metal_list_for_each(list, node) \
    for ((node) = (list)->next; (node) != (list); (node) = (node)->next)
#ifdef __cplusplus
}
#endif
#endif /* __METAL_LIST__H__ */
