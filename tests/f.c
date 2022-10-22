
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

__clos f_this12__body(__clos f, __list __env)
{
  __list __ctemp13 = new(__list);
  __ctemp13.list_tl = __env;
  __ctemp13.list_hd = ((int)f);
  __env = __ctemp13;
  __clos __fun14_clos = new(__clos);
  __fun14_clos.clos_env = __env;
  __fun14_clos.clos_fun = ((int(*)())__fun14__body);
  return __fun14_clos;
}

int __fun14__body(int x, __list __env)
{
  __list __ctemp15 = new(__list);
  __ctemp15.list_tl = __env;
  __ctemp15.list_hd = ((int)x);
  __env = __ctemp15;
  __clos __ctemp16 = ((__clos)__lookup(1, __env));
  int __ctemp17 = ((int)__lookup(0, __env));
  return ((int(*)(int, __list))__ctemp16.clos_fun)(__ctemp17,
    __ctemp16.clos_env);
}

int f8__body(int x, __list __env)
{
  __list __ctemp9 = new(__list);
  __ctemp9.list_tl = __env;
  __ctemp9.list_hd = ((int)x);
  __env = __ctemp9;
  int __ctemp10 = ((int)__lookup(0, __env));
  return __ctemp10 + 3;
}

int f4__body(int x, __list __env)
{
  __list __ctemp5 = new(__list);
  __ctemp5.list_tl = __env;
  __ctemp5.list_hd = ((int)x);
  __env = __ctemp5;
  int __ctemp6 = ((int)__lookup(0, __env));
  return __ctemp6 + 2;
}

int f0__body(int x, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)x);
  __env = __ctemp1;
  int __ctemp2 = ((int)__lookup(0, __env));
  return __ctemp2 + 1;
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
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)f4_clos);
  __env = __ctemp7;
  __clos f8_clos = new(__clos);
  f8_clos.clos_env = __env;
  f8_clos.clos_fun = ((int(*)())f8__body);
  __list __ctemp11 = new(__list);
  __ctemp11.list_tl = __env;
  __ctemp11.list_hd = ((int)f8_clos);
  __env = __ctemp11;
  __clos f_this12_clos = new(__clos);
  f_this12_clos.clos_env = __env;
  f_this12_clos.clos_fun = ((int(*)())f_this12__body);
  __list __ctemp18 = new(__list);
  __ctemp18.list_tl = __env;
  __ctemp18.list_hd = ((int)f_this12_clos);
  __env = __ctemp18;
  __clos __ctemp19 = ((__clos)__lookup(0, __env));
  __clos __ctemp20 = ((__clos)__lookup(1, __env));
  int __ctemp21 =
    ((int(*)(int, __list))(((__clos(*)(__clos, __list))__ctemp19.clos_fun)(__ctemp20
    , __ctemp19.clos_env)).clos_fun)(39,
    (((__clos(*)(__clos, __list))__ctemp19.clos_fun)(__ctemp20,
    __ctemp19.clos_env)).clos_env);
  __env = __env.list_tl;
  int __ctemp22 = __ctemp21;
  __env = __env.list_tl;
  int __ctemp23 = __ctemp22;
  __env = __env.list_tl;
  int __ctemp24 = __ctemp23;
  __env = __env.list_tl;
  return __ctemp24;
}

