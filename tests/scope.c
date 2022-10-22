
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
  __ctemp0.list_tl = __env;
  __ctemp0.list_hd = ((int)2);
  __env = __ctemp0;
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)1);
  __env = __ctemp1;
  int __ctemp2 = ((int)__lookup(0, __env));
  int __ctemp3 = ((int)__lookup(0, __env));
  int __ctemp4 = __ctemp2 + __ctemp3;
  __env = __env.list_tl;
  int __ctemp5 = ((int)__lookup(0, __env));
  __list __ctemp6 = new(__list);
  __ctemp6.list_tl = __env;
  __ctemp6.list_hd = ((int)__ctemp4 + __ctemp5);
  __env = __ctemp6;
  int __ctemp7 = ((int)__lookup(0, __env));
  int __ctemp8 = __ctemp7;
  __env = __env.list_tl;
  int __ctemp9 = __ctemp8;
  __env = __env.list_tl;
  return __ctemp9;
}

