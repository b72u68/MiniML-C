
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

int hd0__body(__list l, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)l);
  __env = __ctemp1;
  __list __ctemp2 = ((__list)__lookup(0, __env));
  int __ctemp3;
  if(((int)__ctemp2) == 0)
  {
    __ctemp3 = 0;
  }
  else
  {
    __list __ctemp4 = new(__list);
    __ctemp4.list_tl = __env;
    __ctemp4.list_hd = ((int)__ctemp2.list_hd);
    __env = __ctemp4;
    __list __ctemp5 = new(__list);
    __ctemp5.list_tl = __env;
    __ctemp5.list_hd = ((int)__ctemp2.list_tl);
    __env = __ctemp5;
    int __ctemp6 = ((int)__lookup(1, __env));
    __ctemp3 = __ctemp6;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  return __ctemp3;
}

int main()
{
  __list __env = ((__list)0);
  __clos hd0_clos = new(__clos);
  hd0_clos.clos_env = __env;
  hd0_clos.clos_fun = ((int(*)())hd0__body);
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)hd0_clos);
  __env = __ctemp7;
  __clos __ctemp8 = ((__clos)__lookup(0, __env));
  __list __ctemp9 = new(__list);
  __ctemp9.list_hd = ((int)2);
  __ctemp9.list_tl = ((__list)0);
  __list __ctemp10 = new(__list);
  __ctemp10.list_hd = ((int)1);
  __ctemp10.list_tl = __ctemp9;
  int __ctemp11 = ((int(*)(__list, __list))__ctemp8.clos_fun)(__ctemp10,
    __ctemp8.clos_env);
  __env = __env.list_tl;
  return __ctemp11;
}

