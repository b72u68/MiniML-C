
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

__list compress14__body(__list l, __list __env)
{
  __list __ctemp15 = new(__list);
  __ctemp15.list_tl = __env;
  __ctemp15.list_hd = ((int)l);
  __env = __ctemp15;
  __list __ctemp16 = ((__list)__lookup(0, __env));
  __list __ctemp17;
  if(((int)__ctemp16) == 0)
  {
    __ctemp17 = ((__list)0);
  }
  else
  {
    __list __ctemp18 = new(__list);
    __ctemp18.list_tl = __env;
    __ctemp18.list_hd = ((int)__ctemp16.list_hd);
    __env = __ctemp18;
    __list __ctemp19 = new(__list);
    __ctemp19.list_tl = __env;
    __ctemp19.list_hd = ((int)__ctemp16.list_tl);
    __env = __ctemp19;
    __list __ctemp20 = ((__list)__lookup(0, __env));
    __list __ctemp21;
    if(((int)__ctemp20) == 0)
    {
      __ctemp21 = ((__list)0);
    }
    else
    {
      __list __ctemp22 = new(__list);
      __ctemp22.list_tl = __env;
      __ctemp22.list_hd = ((int)__ctemp20.list_hd);
      __env = __ctemp22;
      __list __ctemp23 = new(__list);
      __ctemp23.list_tl = __env;
      __ctemp23.list_hd = ((int)__ctemp20.list_tl);
      __env = __ctemp23;
      int __ctemp24 = ((int)__lookup(3, __env));
      int __ctemp25 = ((int)__lookup(1, __env));
      __list __ctemp32;
      if(__ctemp24 == __ctemp25)
      {
        __clos __ctemp26 = ((__clos)__lookup(5, __env));
        __list __ctemp27 = ((__list)__lookup(2, __env));
        __ctemp32 = ((__list(*)(__list, __list))__ctemp26.clos_fun)(__ctemp27,
          __ctemp26.clos_env);
      }
      else
      {
        int __ctemp28 = ((int)__lookup(3, __env));
        __clos __ctemp29 = ((__clos)__lookup(5, __env));
        __list __ctemp30 = ((__list)__lookup(2, __env));
        __list __ctemp31 = new(__list);
        __ctemp31.list_hd = ((int)__ctemp28);
        __ctemp31.list_tl =
          ((__list(*)(__list, __list))__ctemp29.clos_fun)(__ctemp30,
          __ctemp29.clos_env);
        __ctemp32 = __ctemp31;
      }
      __ctemp21 = __ctemp32;
      __env = __env.list_tl;
      __env = __env.list_tl;
    }
    __ctemp17 = __ctemp21;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  return __ctemp17;
}

int main()
{
  __list __env = ((__list)0);
  __list __ctemp0 = new(__list);
  __ctemp0.list_hd = ((int)5);
  __ctemp0.list_tl = ((__list)0);
  __list __ctemp1 = new(__list);
  __ctemp1.list_hd = ((int)5);
  __ctemp1.list_tl = __ctemp0;
  __list __ctemp2 = new(__list);
  __ctemp2.list_hd = ((int)5);
  __ctemp2.list_tl = __ctemp1;
  __list __ctemp3 = new(__list);
  __ctemp3.list_hd = ((int)5);
  __ctemp3.list_tl = __ctemp2;
  __list __ctemp4 = new(__list);
  __ctemp4.list_hd = ((int)4);
  __ctemp4.list_tl = __ctemp3;
  __list __ctemp5 = new(__list);
  __ctemp5.list_hd = ((int)1);
  __ctemp5.list_tl = __ctemp4;
  __list __ctemp6 = new(__list);
  __ctemp6.list_hd = ((int)1);
  __ctemp6.list_tl = __ctemp5;
  __list __ctemp7 = new(__list);
  __ctemp7.list_hd = ((int)3);
  __ctemp7.list_tl = __ctemp6;
  __list __ctemp8 = new(__list);
  __ctemp8.list_hd = ((int)3);
  __ctemp8.list_tl = __ctemp7;
  __list __ctemp9 = new(__list);
  __ctemp9.list_hd = ((int)2);
  __ctemp9.list_tl = __ctemp8;
  __list __ctemp10 = new(__list);
  __ctemp10.list_hd = ((int)1);
  __ctemp10.list_tl = __ctemp9;
  __list __ctemp11 = new(__list);
  __ctemp11.list_hd = ((int)1);
  __ctemp11.list_tl = __ctemp10;
  __list __ctemp12 = new(__list);
  __ctemp12.list_hd = ((int)1);
  __ctemp12.list_tl = __ctemp11;
  __list __ctemp13 = new(__list);
  __ctemp13.list_tl = __env;
  __ctemp13.list_hd = ((int)__ctemp12);
  __env = __ctemp13;
  __clos compress14_clos = new(__clos);
  compress14_clos.clos_env = __env;
  compress14_clos.clos_fun = ((int(*)())compress14__body);
  __list __ctemp33 = new(__list);
  __ctemp33.list_tl = __env;
  __ctemp33.list_hd = ((int)compress14_clos);
  __env = __ctemp33;
  compress14_clos.clos_env = __env;
  __clos __ctemp34 = ((__clos)__lookup(0, __env));
  __list __ctemp35 = ((__list)__lookup(1, __env));
  int __ctemp36;
  if(((int)((__list(*)(__list, __list))__ctemp34.clos_fun)(__ctemp35,
    __ctemp34.clos_env)) == 0)
  {
    __ctemp36 = 0;
  }
  else
  {
    __list __ctemp37 = new(__list);
    __ctemp37.list_tl = __env;
    __ctemp37.list_hd =
      ((int)(((__list(*)(__list, __list))__ctemp34.clos_fun)(__ctemp35,
      __ctemp34.clos_env)).list_hd);
    __env = __ctemp37;
    __list __ctemp38 = new(__list);
    __ctemp38.list_tl = __env;
    __ctemp38.list_hd =
      ((int)(((__list(*)(__list, __list))__ctemp34.clos_fun)(__ctemp35,
      __ctemp34.clos_env)).list_tl);
    __env = __ctemp38;
    __list __ctemp39 = ((__list)__lookup(0, __env));
    int __ctemp40;
    if(((int)__ctemp39) == 0)
    {
      __ctemp40 = 0;
    }
    else
    {
      __list __ctemp41 = new(__list);
      __ctemp41.list_tl = __env;
      __ctemp41.list_hd = ((int)__ctemp39.list_hd);
      __env = __ctemp41;
      __list __ctemp42 = new(__list);
      __ctemp42.list_tl = __env;
      __ctemp42.list_hd = ((int)__ctemp39.list_tl);
      __env = __ctemp42;
      __list __ctemp43 = ((__list)__lookup(0, __env));
      int __ctemp44;
      if(((int)__ctemp43) == 0)
      {
        __ctemp44 = 0;
      }
      else
      {
        __list __ctemp45 = new(__list);
        __ctemp45.list_tl = __env;
        __ctemp45.list_hd = ((int)__ctemp43.list_hd);
        __env = __ctemp45;
        __list __ctemp46 = new(__list);
        __ctemp46.list_tl = __env;
        __ctemp46.list_hd = ((int)__ctemp43.list_tl);
        __env = __ctemp46;
        int __ctemp47 = ((int)__lookup(1, __env));
        __ctemp44 = __ctemp47;
        __env = __env.list_tl;
        __env = __env.list_tl;
      }
      __ctemp40 = __ctemp44;
      __env = __env.list_tl;
      __env = __env.list_tl;
    }
    __ctemp36 = __ctemp40;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  int __ctemp48 = __ctemp36;
  __env = __env.list_tl;
  int __ctemp49 = __ctemp48;
  __env = __env.list_tl;
  return __ctemp49;
}

