
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
  int __ctemp0;
  if(1 + 2 > 0)
  {
    __ctemp0 = 1;
  }
  else
  {
    __ctemp0 = 0;
  }
  return __ctemp0;
}

