
struct __list {
  int list_hd;
  __list list_tl;
};
struct __pair {
  int pair_fst;
  int pair_snd;
};
struct __clos {
  __list clos_env;
  int clos_fun();
};
int __lookup(int i, __list __env)
{
  while(i > 0)
  {
    __env = __env.list_tl;
    i = i - 1;
  }
  return __env.list_hd;
}

__clos __fun0__body(int x, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)x);
  __env = __ctemp1;
  __clos __fun2_clos = new(__clos);
  __fun2_clos.clos_env = __env;
  __fun2_clos.clos_fun = ((int(*)())__fun2__body);
  return __fun2_clos;
}

int __fun2__body(int y, __list __env)
{
  __list __ctemp3 = new(__list);
  __ctemp3.list_tl = __env;
  __ctemp3.list_hd = ((int)y);
  __env = __ctemp3;
  int __ctemp4 = ((int)__lookup(1, __env));
  int __ctemp5 = ((int)__lookup(0, __env));
  return __ctemp4 + __ctemp5;
}

int main()
{
  __list __env = ((__list)0);
  __clos __fun0_clos = new(__clos);
  __fun0_clos.clos_env = __env;
  __fun0_clos.clos_fun = ((int(*)())__fun0__body);
  __list __ctemp6 = new(__list);
  __ctemp6.list_tl = __env;
  __ctemp6.list_hd = ((int)__fun0_clos);
  __env = __ctemp6;
  __clos __ctemp7 = ((__clos)__lookup(0, __env));
  __list __ctemp8 = new(__list);
  __ctemp8.list_tl = __env;
  __ctemp8.list_hd = ((int)((__clos(*)(int, __list))__ctemp7.clos_fun)(1,
    __ctemp7.clos_env));
  __env = __ctemp8;
  __clos __ctemp9 = ((__clos)__lookup(0, __env));
  int __ctemp10 = ((int(*)(int, __list))__ctemp9.clos_fun)(2,
    __ctemp9.clos_env);
  __env = __env.list_tl;
  int __ctemp11 = __ctemp10;
  __env = __env.list_tl;
  return __ctemp11;
}

