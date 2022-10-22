
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

int fst0__body(__pair p, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)p);
  __env = __ctemp1;
  __pair __ctemp2 = ((__pair)__lookup(0, __env));
  __list __ctemp3 = new(__list);
  __ctemp3.list_tl = __env;
  __ctemp3.list_hd = ((int)__ctemp2.pair_fst);
  __env = __ctemp3;
  __list __ctemp4 = new(__list);
  __ctemp4.list_tl = __env;
  __ctemp4.list_hd = ((int)__ctemp2.pair_snd);
  __env = __ctemp4;
  int __ctemp5 = ((int)__lookup(1, __env));
  int __ctemp6 = __ctemp5;
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp6;
}

int main()
{
  __list __env = ((__list)0);
  __clos fst0_clos = new(__clos);
  fst0_clos.clos_env = __env;
  fst0_clos.clos_fun = ((int(*)())fst0__body);
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)fst0_clos);
  __env = __ctemp7;
  __clos __ctemp8 = ((__clos)__lookup(0, __env));
  __pair __ctemp9 = new(__pair);
  __ctemp9.pair_fst = ((int)2);
  __ctemp9.pair_snd = ((int)1);
  int __ctemp10 = ((int(*)(__pair, __list))__ctemp8.clos_fun)(__ctemp9,
    __ctemp8.clos_env);
  __env = __env.list_tl;
  return __ctemp10;
}

