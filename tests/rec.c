
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

int __fun6__body(int y, __list __env)
{
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)y);
  __env = __ctemp7;
  int __ctemp8 = ((int)__lookup(1, __env));
  __clos __ctemp9 = ((__clos)__lookup(2, __env));
  int __ctemp10 = ((int)__lookup(0, __env));
  return __ctemp8 + ((int(*)(int, __list))__ctemp9.clos_fun)(__ctemp10,
    __ctemp9.clos_env);
}

__clos f4__body(int x, __list __env)
{
  __list __ctemp5 = new(__list);
  __ctemp5.list_tl = __env;
  __ctemp5.list_hd = ((int)x);
  __env = __ctemp5;
  __clos __fun6_clos = new(__clos);
  __fun6_clos.clos_env = __env;
  __fun6_clos.clos_fun = ((int(*)())__fun6__body);
  return __fun6_clos;
}

int f0__body(int x, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)x);
  __env = __ctemp1;
  int __ctemp2 = ((int)__lookup(0, __env));
  return __ctemp2 - 1;
}

int main()
{
  __list __env = ((__list)0);
  __clos f0_clos = new(__clos);
  f0_clos.clos_env = __env;
  f0_clos.clos_fun = ((int(*)())f0__body);
  __list __ctemp3 = new(__list);
  __ctemp3.list_tl = __env;
  __ctemp3.list_hd = ((int)f0_clos);
  __env = __ctemp3;
  __clos f4_clos = new(__clos);
  f4_clos.clos_env = __env;
  f4_clos.clos_fun = ((int(*)())f4__body);
  __list __ctemp11 = new(__list);
  __ctemp11.list_tl = __env;
  __ctemp11.list_hd = ((int)f4_clos);
  __env = __ctemp11;
  __clos __ctemp12 = ((__clos)__lookup(0, __env));
  int __ctemp13 =
    ((int(*)(int, __list))(((__clos(*)(int, __list))__ctemp12.clos_fun)(1,
    __ctemp12.clos_env)).clos_fun)(2,
    (((__clos(*)(int, __list))__ctemp12.clos_fun)(1,
    __ctemp12.clos_env)).clos_env);
  __env = __env.list_tl;
  int __ctemp14 = __ctemp13;
  __env = __env.list_tl;
  return __ctemp14;
}

