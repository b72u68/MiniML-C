
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

int find6__body(__list l, __list __env)
{
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)l);
  __env = __ctemp7;
  __list __ctemp8 = new(__list);
  __ctemp8.list_tl = __env;
  __ctemp8.list_hd = ((int)3);
  __env = __ctemp8;
  __list __ctemp9 = ((__list)__lookup(1, __env));
  int __ctemp10;
  if(((int)__ctemp9) == 0)
  {
    __ctemp10 = 0;
  }
  else
  {
    __list __ctemp11 = new(__list);
    __ctemp11.list_tl = __env;
    __ctemp11.list_hd = ((int)__ctemp9.list_hd);
    __env = __ctemp11;
    __list __ctemp12 = new(__list);
    __ctemp12.list_tl = __env;
    __ctemp12.list_hd = ((int)__ctemp9.list_tl);
    __env = __ctemp12;
    int __ctemp13 = ((int)__lookup(1, __env));
    int __ctemp14 = ((int)__lookup(2, __env));
    int __ctemp18;
    if(__ctemp13 == __ctemp14)
    {
      int __ctemp15 = ((int)__lookup(1, __env));
      __ctemp18 = __ctemp15;
    }
    else
    {
      __clos __ctemp16 = ((__clos)__lookup(4, __env));
      __list __ctemp17 = ((__list)__lookup(0, __env));
      __ctemp18 = ((int(*)(__list, __list))__ctemp16.clos_fun)(__ctemp17,
        __ctemp16.clos_env);
    }
    __ctemp10 = __ctemp18;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  int __ctemp19 = __ctemp10;
  __env = __env.list_tl;
  return __ctemp19;
}

int main()
{
  __list __env = ((__list)0);
  __list __ctemp0 = new(__list);
  __ctemp0.list_hd = ((int)5);
  __ctemp0.list_tl = ((__list)0);
  __list __ctemp1 = new(__list);
  __ctemp1.list_hd = ((int)4);
  __ctemp1.list_tl = __ctemp0;
  __list __ctemp2 = new(__list);
  __ctemp2.list_hd = ((int)3);
  __ctemp2.list_tl = __ctemp1;
  __list __ctemp3 = new(__list);
  __ctemp3.list_hd = ((int)2);
  __ctemp3.list_tl = __ctemp2;
  __list __ctemp4 = new(__list);
  __ctemp4.list_hd = ((int)1);
  __ctemp4.list_tl = __ctemp3;
  __list __ctemp5 = new(__list);
  __ctemp5.list_tl = __env;
  __ctemp5.list_hd = ((int)__ctemp4);
  __env = __ctemp5;
  __clos find6_clos = new(__clos);
  find6_clos.clos_env = __env;
  find6_clos.clos_fun = ((int(*)())find6__body);
  __list __ctemp20 = new(__list);
  __ctemp20.list_tl = __env;
  __ctemp20.list_hd = ((int)find6_clos);
  __env = __ctemp20;
  find6_clos.clos_env = __env;
  __clos __ctemp21 = ((__clos)__lookup(0, __env));
  __list __ctemp22 = ((__list)__lookup(1, __env));
  int __ctemp23 = ((int(*)(__list, __list))__ctemp21.clos_fun)(__ctemp22,
    __ctemp21.clos_env);
  __env = __env.list_tl;
  int __ctemp24 = __ctemp23;
  __env = __env.list_tl;
  return __ctemp24;
}

