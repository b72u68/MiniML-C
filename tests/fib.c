
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

int fib0__body(int n, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)n);
  __env = __ctemp1;
  int __ctemp2 = ((int)__lookup(0, __env));
  int __ctemp8;
  if(__ctemp2 <= 1)
  {
    int __ctemp3 = ((int)__lookup(0, __env));
    __ctemp8 = __ctemp3;
  }
  else
  {
    __clos __ctemp4 = ((__clos)__lookup(1, __env));
    int __ctemp5 = ((int)__lookup(0, __env));
    __clos __ctemp6 = ((__clos)__lookup(1, __env));
    int __ctemp7 = ((int)__lookup(0, __env));
    __ctemp8 = ((int(*)(int, __list))__ctemp4.clos_fun)(__ctemp5 - 2,
      __ctemp4.clos_env) + ((int(*)(int, __list))__ctemp6.clos_fun)(__ctemp7 -
      1, __ctemp6.clos_env);
  }
  return __ctemp8;
}

int main()
{
  __list __env = ((__list)0);
  __clos fib0_clos = new(__clos);
  fib0_clos.clos_env = __env;
  fib0_clos.clos_fun = ((int(*)())fib0__body);
  __list __ctemp9 = new(__list);
  __ctemp9.list_tl = __env;
  __ctemp9.list_hd = ((int)fib0_clos);
  __env = __ctemp9;
  fib0_clos.clos_env = __env;
  __clos __ctemp10 = ((__clos)__lookup(0, __env));
  int __ctemp11 = ((int(*)(int, __list))__ctemp10.clos_fun)(6,
    __ctemp10.clos_env);
  __env = __env.list_tl;
  return __ctemp11;
}

