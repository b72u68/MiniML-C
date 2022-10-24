
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

int __fun14__body(int y, __list __env)
{
  __list __ctemp15 = new(__list);
  __ctemp15.list_tl = __env;
  __ctemp15.list_hd = ((int)y);
  __env = __ctemp15;
  int __ctemp16 = ((int)__lookup(1, __env));
  int __ctemp17 = ((int)__lookup(0, __env));
  return __ctemp16 + __ctemp17;
}

__clos __fun12__body(int x, __list __env)
{
  __list __ctemp13 = new(__list);
  __ctemp13.list_tl = __env;
  __ctemp13.list_hd = ((int)x);
  __env = __ctemp13;
  __clos __fun14_clos = new(__clos);
  __fun14_clos.clos_env = __env;
  __fun14_clos.clos_fun = ((int(*)())__fun14__body);
  return __fun14_clos;
}

int __fun2__body(__pair xy, __list __env)
{
  __list __ctemp3 = new(__list);
  __ctemp3.list_tl = __env;
  __ctemp3.list_hd = ((int)xy);
  __env = __ctemp3;
  __pair __ctemp4 = ((__pair)__lookup(0, __env));
  __list __ctemp5 = new(__list);
  __ctemp5.list_tl = __env;
  __ctemp5.list_hd = ((int)__ctemp4.pair_fst);
  __env = __ctemp5;
  __list __ctemp6 = new(__list);
  __ctemp6.list_tl = __env;
  __ctemp6.list_hd = ((int)__ctemp4.pair_snd);
  __env = __ctemp6;
  __clos __ctemp7 = ((__clos)__lookup(3, __env));
  int __ctemp8 = ((int)__lookup(1, __env));
  int __ctemp9 = ((int)__lookup(0, __env));
  int __ctemp10 =
    ((int(*)(int, __list))(((__clos(*)(int, __list))__ctemp7.clos_fun)(__ctemp8,
    __ctemp7.clos_env)).clos_fun)(__ctemp9,
    (((__clos(*)(int, __list))__ctemp7.clos_fun)(__ctemp8,
    __ctemp7.clos_env)).clos_env);
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp10;
}

__clos uncurry0__body(__clos f, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)f);
  __env = __ctemp1;
  __clos __fun2_clos = new(__clos);
  __fun2_clos.clos_env = __env;
  __fun2_clos.clos_fun = ((int(*)())__fun2__body);
  return __fun2_clos;
}

int main()
{
  __list __env = ((__list)0);
  __clos uncurry0_clos = new(__clos);
  uncurry0_clos.clos_env = __env;
  uncurry0_clos.clos_fun = ((int(*)())uncurry0__body);
  __list __ctemp11 = new(__list);
  __ctemp11.list_tl = __env;
  __ctemp11.list_hd = ((int)uncurry0_clos);
  __env = __ctemp11;
  __clos __fun12_clos = new(__clos);
  __fun12_clos.clos_env = __env;
  __fun12_clos.clos_fun = ((int(*)())__fun12__body);
  __list __ctemp18 = new(__list);
  __ctemp18.list_tl = __env;
  __ctemp18.list_hd = ((int)__fun12_clos);
  __env = __ctemp18;
  __clos __ctemp19 = ((__clos)__lookup(1, __env));
  __clos __ctemp20 = ((__clos)__lookup(0, __env));
  __pair __ctemp21 = new(__pair);
  __ctemp21.pair_fst = ((int)5);
  __ctemp21.pair_snd = ((int)3);
  int __ctemp22 =
    ((int(*)(__pair, __list))(((__clos(*)(__clos, __list))__ctemp19.clos_fun)(__ctemp20
    , __ctemp19.clos_env)).clos_fun)(__ctemp21,
    (((__clos(*)(__clos, __list))__ctemp19.clos_fun)(__ctemp20,
    __ctemp19.clos_env)).clos_env);
  __env = __env.list_tl;
  int __ctemp23 = __ctemp22;
  __env = __env.list_tl;
  return __ctemp23;
}

