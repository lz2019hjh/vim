/* list.c */
void list_add_watch(list_T *l, listwatch_T *lw);
void list_rem_watch(list_T *l, listwatch_T *lwrem);
list_T *list_alloc(void);
list_T *list_alloc_id(alloc_id_T id);
list_T *list_alloc_with_items(int count);
void list_set_item(list_T *l, int idx, typval_T *tv);
int rettv_list_alloc(typval_T *rettv);
int rettv_list_alloc_id(typval_T *rettv, alloc_id_T id);
void rettv_list_set(typval_T *rettv, list_T *l);
void list_unref(list_T *l);
int list_free_nonref(int copyID);
void list_free_items(int copyID);
void list_free(list_T *l);
listitem_T *listitem_alloc(void);
void listitem_free(list_T *l, listitem_T *item);
void listitem_remove(list_T *l, listitem_T *item);
long list_len(list_T *l);
int list_equal(list_T *l1, list_T *l2, int ic, int recursive);
listitem_T *list_find(list_T *l, long n);
long list_find_nr(list_T *l, long idx, int *errorp);
char_u *list_find_str(list_T *l, long idx);
long list_idx_of_item(list_T *l, listitem_T *item);
void list_append(list_T *l, listitem_T *item);
int list_append_tv(list_T *l, typval_T *tv);
int list_append_tv_move(list_T *l, typval_T *tv);
int list_append_dict(list_T *list, dict_T *dict);
int list_append_list(list_T *list1, list_T *list2);
int list_append_string(list_T *l, char_u *str, int len);
int list_append_number(list_T *l, varnumber_T n);
int list_insert_tv(list_T *l, typval_T *tv, listitem_T *item);
void list_insert(list_T *l, listitem_T *ni, listitem_T *item);
void f_flatten(typval_T *argvars, typval_T *rettv);
int list_extend(list_T *l1, list_T *l2, listitem_T *bef);
int list_concat(list_T *l1, list_T *l2, typval_T *tv);
list_T *list_slice(list_T *ol, long n1, long n2);
list_T *list_copy(list_T *orig, int deep, int copyID);
void vimlist_remove(list_T *l, listitem_T *item, listitem_T *item2);
char_u *list2string(typval_T *tv, int copyID, int restore_copyID);
int list_join(garray_T *gap, list_T *l, char_u *sep, int echo_style, int restore_copyID, int copyID);
void f_join(typval_T *argvars, typval_T *rettv);
int get_list_tv(char_u **arg, typval_T *rettv, int flags, int do_error);
int write_list(FILE *fd, list_T *list, int binary);
void init_static_list(staticList10_T *sl);
void f_list2str(typval_T *argvars, typval_T *rettv);
void f_sort(typval_T *argvars, typval_T *rettv);
void f_uniq(typval_T *argvars, typval_T *rettv);
void f_filter(typval_T *argvars, typval_T *rettv);
void f_map(typval_T *argvars, typval_T *rettv);
void f_add(typval_T *argvars, typval_T *rettv);
void f_count(typval_T *argvars, typval_T *rettv);
void f_extend(typval_T *argvars, typval_T *rettv);
void f_insert(typval_T *argvars, typval_T *rettv);
void f_remove(typval_T *argvars, typval_T *rettv);
void f_reverse(typval_T *argvars, typval_T *rettv);
void f_reduce(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */
