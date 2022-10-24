
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

int __fun66__body(int y, __list __env)
{
  __list __ctemp67 = new(__list);
  __ctemp67.list_tl = __env;
  __ctemp67.list_hd = ((int)y);
  __env = __ctemp67;
  int __ctemp68 = ((int)__lookup(1, __env));
  int __ctemp69 = ((int)__lookup(0, __env));
  return __ctemp68 + __ctemp69;
}

__clos __fun64__body(int x, __list __env)
{
  __list __ctemp65 = new(__list);
  __ctemp65.list_tl = __env;
  __ctemp65.list_hd = ((int)x);
  __env = __ctemp65;
  __clos __fun66_clos = new(__clos);
  __fun66_clos.clos_env = __env;
  __fun66_clos.clos_fun = ((int(*)())__fun66__body);
  return __fun66_clos;
}

int __fun57__body(int x, __list __env)
{
  __list __ctemp58 = new(__list);
  __ctemp58.list_tl = __env;
  __ctemp58.list_hd = ((int)x);
  __env = __ctemp58;
  int __ctemp59 = ((int)__lookup(0, __env));
  int __ctemp60 = ((int)__lookup(0, __env));
  int __ctemp61 = ((int)__lookup(0, __env));
  int __ctemp62;
  if(__ctemp59 / 2 + __ctemp60 / 2 == __ctemp61)
  {
    __ctemp62 = 1;
  }
  else
  {
    __ctemp62 = 0;
  }
  return __ctemp62;
}

__list map_helper27__body(__pair args, __list __env)
{
  __list __ctemp28 = new(__list);
  __ctemp28.list_tl = __env;
  __ctemp28.list_hd = ((int)args);
  __env = __ctemp28;
  __pair __ctemp29 = ((__pair)__lookup(0, __env));
  __list __ctemp30 = new(__list);
  __ctemp30.list_tl = __env;
  __ctemp30.list_hd = ((int)__ctemp29.pair_fst);
  __env = __ctemp30;
  __list __ctemp31 = new(__list);
  __ctemp31.list_tl = __env;
  __ctemp31.list_hd = ((int)__ctemp29.pair_snd);
  __env = __ctemp31;
  __list __ctemp32 = ((__list)__lookup(0, __env));
  __list __ctemp34;
  if(((int)__ctemp32) == 0)
  {
    __list __ctemp33 = ((__list)__lookup(1, __env));
    __ctemp34 = __ctemp33;
  }
  else
  {
    __list __ctemp35 = new(__list);
    __ctemp35.list_tl = __env;
    __ctemp35.list_hd = ((int)__ctemp32.list_hd);
    __env = __ctemp35;
    __list __ctemp36 = new(__list);
    __ctemp36.list_tl = __env;
    __ctemp36.list_hd = ((int)__ctemp32.list_tl);
    __env = __ctemp36;
    __clos __ctemp37 = ((__clos)__lookup(7, __env));
    int __ctemp38 = ((int)__lookup(1, __env));
    __list __ctemp39 = new(__list);
    __ctemp39.list_tl = __env;
    __ctemp39.list_hd =
      ((int)((int(*)(int, __list))__ctemp37.clos_fun)(__ctemp38,
      __ctemp37.clos_env));
    __env = __ctemp39;
    int __ctemp40 = ((int)__lookup(0, __env));
    __list __ctemp41 = ((__list)__lookup(4, __env));
    __list __ctemp42 = new(__list);
    __ctemp42.list_hd = ((int)__ctemp40);
    __ctemp42.list_tl = __ctemp41;
    __list __ctemp43 = new(__list);
    __ctemp43.list_tl = __env;
    __ctemp43.list_hd = ((int)__ctemp42);
    __env = __ctemp43;
    __clos __ctemp44 = ((__clos)__lookup(7, __env));
    __list __ctemp45 = ((__list)__lookup(0, __env));
    __list __ctemp46 = ((__list)__lookup(2, __env));
    __pair __ctemp47 = new(__pair);
    __ctemp47.pair_fst = ((int)__ctemp45);
    __ctemp47.pair_snd = ((int)__ctemp46);
    __list __ctemp48 =
      ((__list(*)(__pair, __list))__ctemp44.clos_fun)(__ctemp47,
      __ctemp44.clos_env);
    __env = __env.list_tl;
    __list __ctemp49 = __ctemp48;
    __env = __env.list_tl;
    __ctemp34 = __ctemp49;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  __list __ctemp50 = __ctemp34;
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp50;
}

__list __fun25__body(__list lst, __list __env)
{
  __list __ctemp26 = new(__list);
  __ctemp26.list_tl = __env;
  __ctemp26.list_hd = ((int)lst);
  __env = __ctemp26;
  __clos map_helper27_clos = new(__clos);
  map_helper27_clos.clos_env = __env;
  map_helper27_clos.clos_fun = ((int(*)())map_helper27__body);
  __list __ctemp51 = new(__list);
  __ctemp51.list_tl = __env;
  __ctemp51.list_hd = ((int)map_helper27_clos);
  __env = __ctemp51;
  map_helper27_clos.clos_env = __env;
  __clos __ctemp52 = ((__clos)__lookup(0, __env));
  __list __ctemp53 = ((__list)__lookup(1, __env));
  __pair __ctemp54 = new(__pair);
  __ctemp54.pair_fst = ((int)(__list)0);
  __ctemp54.pair_snd = ((int)__ctemp53);
  __list __ctemp55 = ((__list(*)(__pair, __list))__ctemp52.clos_fun)(__ctemp54,
    __ctemp52.clos_env);
  __env = __env.list_tl;
  return __ctemp55;
}

__clos __fun23__body(__clos mapper, __list __env)
{
  __list __ctemp24 = new(__list);
  __ctemp24.list_tl = __env;
  __ctemp24.list_hd = ((int)mapper);
  __env = __ctemp24;
  __clos __fun25_clos = new(__clos);
  __fun25_clos.clos_env = __env;
  __fun25_clos.clos_fun = ((int(*)())__fun25__body);
  return __fun25_clos;
}

int fold0__body(__pair args, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)args);
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
  __pair __ctemp5 = ((__pair)__lookup(0, __env));
  __list __ctemp6 = new(__list);
  __ctemp6.list_tl = __env;
  __ctemp6.list_hd = ((int)__ctemp5.pair_fst);
  __env = __ctemp6;
  __list __ctemp7 = new(__list);
  __ctemp7.list_tl = __env;
  __ctemp7.list_hd = ((int)__ctemp5.pair_snd);
  __env = __ctemp7;
  __list __ctemp8 = ((__list)__lookup(1, __env));
  int __ctemp10;
  if(((int)__ctemp8) == 0)
  {
    int __ctemp9 = ((int)__lookup(0, __env));
    __ctemp10 = __ctemp9;
  }
  else
  {
    __list __ctemp11 = new(__list);
    __ctemp11.list_tl = __env;
    __ctemp11.list_hd = ((int)__ctemp8.list_hd);
    __env = __ctemp11;
    __list __ctemp12 = new(__list);
    __ctemp12.list_tl = __env;
    __ctemp12.list_hd = ((int)__ctemp8.list_tl);
    __env = __ctemp12;
    __clos __ctemp13 = ((__clos)__lookup(7, __env));
    __clos __ctemp14 = ((__clos)__lookup(5, __env));
    __list __ctemp15 = ((__list)__lookup(0, __env));
    int __ctemp16 = ((int)__lookup(2, __env));
    int __ctemp17 = ((int)__lookup(1, __env));
    __pair __ctemp18 = new(__pair);
    __ctemp18.pair_fst = ((int)__ctemp15);
    __ctemp18.pair_snd = ((int)__ctemp16 + __ctemp17);
    __pair __ctemp19 = new(__pair);
    __ctemp19.pair_fst = ((int)__ctemp14);
    __ctemp19.pair_snd = ((int)__ctemp18);
    __ctemp10 = ((int(*)(__pair, __list))__ctemp13.clos_fun)(__ctemp19,
      __ctemp13.clos_env);
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  int __ctemp20 = __ctemp10;
  __env = __env.list_tl;
  __env = __env.list_tl;
  int __ctemp21 = __ctemp20;
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp21;
}

int main()
{
  __list __env = ((__list)0);
  __clos fold0_clos = new(__clos);
  fold0_clos.clos_env = __env;
  fold0_clos.clos_fun = ((int(*)())fold0__body);
  __list __ctemp22 = new(__list);
  __ctemp22.list_tl = __env;
  __ctemp22.list_hd = ((int)fold0_clos);
  __env = __ctemp22;
  fold0_clos.clos_env = __env;
  __clos __fun23_clos = new(__clos);
  __fun23_clos.clos_env = __env;
  __fun23_clos.clos_fun = ((int(*)())__fun23__body);
  __list __ctemp56 = new(__list);
  __ctemp56.list_tl = __env;
  __ctemp56.list_hd = ((int)__fun23_clos);
  __env = __ctemp56;
  __clos __fun57_clos = new(__clos);
  __fun57_clos.clos_env = __env;
  __fun57_clos.clos_fun = ((int(*)())__fun57__body);
  __list __ctemp63 = new(__list);
  __ctemp63.list_tl = __env;
  __ctemp63.list_hd = ((int)__fun57_clos);
  __env = __ctemp63;
  __clos __fun64_clos = new(__clos);
  __fun64_clos.clos_env = __env;
  __fun64_clos.clos_fun = ((int(*)())__fun64__body);
  __list __ctemp70 = new(__list);
  __ctemp70.list_tl = __env;
  __ctemp70.list_hd = ((int)__fun64_clos);
  __env = __ctemp70;
  __list __ctemp71 = new(__list);
  __ctemp71.list_hd = ((int)10);
  __ctemp71.list_tl = ((__list)0);
  __list __ctemp72 = new(__list);
  __ctemp72.list_hd = ((int)9);
  __ctemp72.list_tl = __ctemp71;
  __list __ctemp73 = new(__list);
  __ctemp73.list_hd = ((int)8);
  __ctemp73.list_tl = __ctemp72;
  __list __ctemp74 = new(__list);
  __ctemp74.list_hd = ((int)7);
  __ctemp74.list_tl = __ctemp73;
  __list __ctemp75 = new(__list);
  __ctemp75.list_hd = ((int)6);
  __ctemp75.list_tl = __ctemp74;
  __list __ctemp76 = new(__list);
  __ctemp76.list_hd = ((int)5);
  __ctemp76.list_tl = __ctemp75;
  __list __ctemp77 = new(__list);
  __ctemp77.list_hd = ((int)4);
  __ctemp77.list_tl = __ctemp76;
  __list __ctemp78 = new(__list);
  __ctemp78.list_hd = ((int)3);
  __ctemp78.list_tl = __ctemp77;
  __list __ctemp79 = new(__list);
  __ctemp79.list_hd = ((int)2);
  __ctemp79.list_tl = __ctemp78;
  __list __ctemp80 = new(__list);
  __ctemp80.list_hd = ((int)1);
  __ctemp80.list_tl = __ctemp79;
  __list __ctemp81 = new(__list);
  __ctemp81.list_tl = __env;
  __ctemp81.list_hd = ((int)__ctemp80);
  __env = __ctemp81;
  __clos __ctemp82 = ((__clos)__lookup(4, __env));
  __clos __ctemp83 = ((__clos)__lookup(1, __env));
  __clos __ctemp84 = ((__clos)__lookup(3, __env));
  __clos __ctemp85 = ((__clos)__lookup(2, __env));
  __list __ctemp86 = ((__list)__lookup(0, __env));
  __pair __ctemp87 = new(__pair);
  __ctemp87.pair_fst =
    ((int)((__list(*)(__list, __list))(((__clos(*)(__clos, __list))__ctemp84.clos_fun
    )(__ctemp85, __ctemp84.clos_env)).clos_fun)(__ctemp86,
    (((__clos(*)(__clos, __list))__ctemp84.clos_fun)(__ctemp85,
    __ctemp84.clos_env)).clos_env));
  __ctemp87.pair_snd = ((int)0);
  __pair __ctemp88 = new(__pair);
  __ctemp88.pair_fst = ((int)__ctemp83);
  __ctemp88.pair_snd = ((int)__ctemp87);
  int __ctemp89 = ((int(*)(__pair, __list))__ctemp82.clos_fun)(__ctemp88,
    __ctemp82.clos_env);
  __env = __env.list_tl;
  int __ctemp90 = __ctemp89;
  __env = __env.list_tl;
  int __ctemp91 = __ctemp90;
  __env = __env.list_tl;
  int __ctemp92 = __ctemp91;
  __env = __env.list_tl;
  int __ctemp93 = __ctemp92;
  __env = __env.list_tl;
  return __ctemp93;
}

