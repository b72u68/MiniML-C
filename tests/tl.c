
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

int main()
{
  __list __env = ((__list)0);
  __list __ctemp0 = new(__list);
  __ctemp0.list_hd = ((int)2);
  __ctemp0.list_tl = ((__list)0);
  __list __ctemp1 = new(__list);
  __ctemp1.list_hd = ((int)1);
  __ctemp1.list_tl = __ctemp0;
  __list __ctemp2 = new(__list);
  __ctemp2.list_tl = __env;
  __ctemp2.list_hd = ((int)__ctemp1);
  __env = __ctemp2;
  __list __ctemp3 = ((__list)__lookup(0, __env));
  int __ctemp4;
  if(((int)__ctemp3) == 0)
  {
    __ctemp4 = 0;
  }
  else
  {
    __list __ctemp5 = new(__list);
    __ctemp5.list_tl = __env;
    __ctemp5.list_hd = ((int)__ctemp3.list_hd);
    __env = __ctemp5;
    __list __ctemp6 = new(__list);
    __ctemp6.list_tl = __env;
    __ctemp6.list_hd = ((int)__ctemp3.list_tl);
    __env = __ctemp6;
    __list __ctemp7 = ((__list)__lookup(0, __env));
    int __ctemp8;
    if(((int)__ctemp7) == 0)
    {
      __ctemp8 = 0;
    }
    else
    {
      __list __ctemp9 = new(__list);
      __ctemp9.list_tl = __env;
      __ctemp9.list_hd = ((int)__ctemp7.list_hd);
      __env = __ctemp9;
      __list __ctemp10 = new(__list);
      __ctemp10.list_tl = __env;
      __ctemp10.list_hd = ((int)__ctemp7.list_tl);
      __env = __ctemp10;
      int __ctemp11 = ((int)__lookup(1, __env));
      __ctemp8 = __ctemp11;
      __env = __env.list_tl;
      __env = __env.list_tl;
    }
    __ctemp4 = __ctemp8;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  int __ctemp12 = __ctemp4;
  __env = __env.list_tl;
  return __ctemp12;
}

