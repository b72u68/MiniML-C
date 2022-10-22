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

int find(__list l, __list __env)
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
  int __ctemp20;
  if(((int)__ctemp9) == 0)
  {
    __ctemp20 = 0;
  }
  else
  {
    __list __ctemp10 = new(__list);
    __ctemp10.list_tl = __env;
    __ctemp10.list_hd = ((int)__ctemp9.list_hd);
    __env = __ctemp10;
    __list __ctemp11 = new(__list);
    __ctemp11.list_tl = __env;
    __ctemp11.list_hd = ((int)__ctemp9.list_tl);
    __env = __ctemp11;
    int __ctemp13 = ((int)__lookup(1, __env));
    int __ctemp14 = ((int)__lookup(2, __env));
    int __ctemp12;
    if(__ctemp13 == __ctemp14)
    {
      int __ctemp15 = ((int)__lookup(1, __env));
      __ctemp12 = __ctemp15;
    }
    else
    {
      __clos __ctemp16 = ((__clos)__lookup(4, __env));
      __list __ctemp17 = ((__list)__lookup(0, __env));
      int __ctemp19 = ((int(*)(__list, __list))__ctemp16.clos_fun)(__ctemp17,
        __ctemp16.clos_env);
      __ctemp12 = __ctemp19;
    }
    __ctemp20 = __ctemp12;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  __env = __env.list_tl;
  return __ctemp20;
}

int main()
{
  __list __env = ((__list)0);
  __list __ctemp0 = new(__list);
  __ctemp0.list_tl = ((__list)0);
  __ctemp0.list_hd = ((int)5);
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __ctemp0;
  __ctemp1.list_hd = ((int)4);
  __list __ctemp2 = new(__list);
  __ctemp2.list_tl = __ctemp1;
  __ctemp2.list_hd = ((int)3);
  __list __ctemp3 = new(__list);
  __ctemp3.list_tl = __ctemp2;
  __ctemp3.list_hd = ((int)2);
  __list __ctemp4 = new(__list);
  __ctemp4.list_tl = __ctemp3;
  __ctemp4.list_hd = ((int)1);
  __list __ctemp5 = new(__list);
  __ctemp5.list_tl = __env;
  __ctemp5.list_hd = ((int)__ctemp4);
  __env = __ctemp5;
  __clos __ctemp6 = new(__clos);
  __ctemp6.clos_fun = ((int(*)())find);
  __ctemp6.clos_env = __env;
  __list __ctemp21 = new(__list);
  __ctemp21.list_tl = __env;
  __ctemp21.list_hd = ((int)__ctemp6);
  __env = __ctemp21;
  __ctemp6.clos_env = __env;
  __clos __ctemp22 = ((__clos)__lookup(0, __env));
  __list __ctemp23 = ((__list)__lookup(2, __env));
  int __ctemp25 = ((int(*)(__list, __list))__ctemp22.clos_fun)(__ctemp23,
    __ctemp22.clos_env);
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp25;
}
