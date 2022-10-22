
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

__list qsort63__body(__list l, __list __env)
{
  __list __ctemp64 = new(__list);
  __ctemp64.list_tl = __env;
  __ctemp64.list_hd = ((int)l);
  __env = __ctemp64;
  __list __ctemp65 = ((__list)__lookup(0, __env));
  __list __ctemp66;
  if(((int)__ctemp65) == 0)
  {
    __ctemp66 = ((__list)0);
  }
  else
  {
    __list __ctemp67 = new(__list);
    __ctemp67.list_tl = __env;
    __ctemp67.list_hd = ((int)__ctemp65.list_hd);
    __env = __ctemp67;
    __list __ctemp68 = new(__list);
    __ctemp68.list_tl = __env;
    __ctemp68.list_hd = ((int)__ctemp65.list_tl);
    __env = __ctemp68;
    __clos __ctemp69 = ((__clos)__lookup(4, __env));
    int __ctemp70 = ((int)__lookup(1, __env));
    __list __ctemp71 = ((__list)__lookup(0, __env));
    __list __ctemp72 = new(__list);
    __ctemp72.list_tl = __env;
    __ctemp72.list_hd =
      ((int)(((__pair(*)(__list, __list))(((__clos(*)(int, __list))__ctemp69.clos_fun
      )(__ctemp70, __ctemp69.clos_env)).clos_fun)(__ctemp71,
      (((__clos(*)(int, __list))__ctemp69.clos_fun)(__ctemp70,
      __ctemp69.clos_env)).clos_env)).pair_fst);
    __env = __ctemp72;
    __list __ctemp73 = new(__list);
    __ctemp73.list_tl = __env;
    __ctemp73.list_hd =
      ((int)(((__pair(*)(__list, __list))(((__clos(*)(int, __list))__ctemp69.clos_fun
      )(__ctemp70, __ctemp69.clos_env)).clos_fun)(__ctemp71,
      (((__clos(*)(int, __list))__ctemp69.clos_fun)(__ctemp70,
      __ctemp69.clos_env)).clos_env)).pair_snd);
    __env = __ctemp73;
    __clos __ctemp74 = ((__clos)__lookup(5, __env));
    __list __ctemp75 = ((__list)__lookup(1, __env));
    __clos __ctemp76 = ((__clos)__lookup(5, __env));
    __list __ctemp77 = ((__list)__lookup(0, __env));
    __pair __ctemp78 = new(__pair);
    __ctemp78.pair_fst =
      ((int)((__list(*)(__list, __list))__ctemp74.clos_fun)(__ctemp75,
      __ctemp74.clos_env));
    __ctemp78.pair_snd =
      ((int)((__list(*)(__list, __list))__ctemp76.clos_fun)(__ctemp77,
      __ctemp76.clos_env));
    __list __ctemp79 = new(__list);
    __ctemp79.list_tl = __env;
    __ctemp79.list_hd = ((int)__ctemp78.pair_fst);
    __env = __ctemp79;
    __list __ctemp80 = new(__list);
    __ctemp80.list_tl = __env;
    __ctemp80.list_hd = ((int)__ctemp78.pair_snd);
    __env = __ctemp80;
    __clos __ctemp81 = ((__clos)__lookup(9, __env));
    __list __ctemp82 = ((__list)__lookup(1, __env));
    int __ctemp83 = ((int)__lookup(5, __env));
    __list __ctemp84 = ((__list)__lookup(0, __env));
    __list __ctemp85 = new(__list);
    __ctemp85.list_hd = ((int)__ctemp83);
    __ctemp85.list_tl = __ctemp84;
    __pair __ctemp86 = new(__pair);
    __ctemp86.pair_fst = ((int)__ctemp82);
    __ctemp86.pair_snd = ((int)__ctemp85);
    __list __ctemp87 =
      ((__list(*)(__pair, __list))__ctemp81.clos_fun)(__ctemp86,
      __ctemp81.clos_env);
    __env = __env.list_tl;
    __env = __env.list_tl;
    __list __ctemp88 = __ctemp87;
    __env = __env.list_tl;
    __env = __env.list_tl;
    __ctemp66 = __ctemp88;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  return __ctemp66;
}

__clos partition32__body(int p, __list __env)
{
  __list __ctemp33 = new(__list);
  __ctemp33.list_tl = __env;
  __ctemp33.list_hd = ((int)p);
  __env = __ctemp33;
  __clos part_rec34_clos = new(__clos);
  part_rec34_clos.clos_env = __env;
  part_rec34_clos.clos_fun = ((int(*)())part_rec34__body);
  __list __ctemp59 = new(__list);
  __ctemp59.list_tl = __env;
  __ctemp59.list_hd = ((int)part_rec34_clos);
  __env = __ctemp59;
  part_rec34_clos.clos_env = __env;
  __clos __ctemp60 = ((__clos)__lookup(0, __env));
  __clos __ctemp61 = __ctemp60;
  __env = __env.list_tl;
  return __ctemp61;
}

__pair part_rec34__body(__list l, __list __env)
{
  __list __ctemp35 = new(__list);
  __ctemp35.list_tl = __env;
  __ctemp35.list_hd = ((int)l);
  __env = __ctemp35;
  __list __ctemp36 = ((__list)__lookup(0, __env));
  __pair __ctemp38;
  if(((int)__ctemp36) == 0)
  {
    __pair __ctemp37 = new(__pair);
    __ctemp37.pair_fst = ((int)(__list)0);
    __ctemp37.pair_snd = ((int)(__list)0);
    __ctemp38 = __ctemp37;
  }
  else
  {
    __list __ctemp39 = new(__list);
    __ctemp39.list_tl = __env;
    __ctemp39.list_hd = ((int)__ctemp36.list_hd);
    __env = __ctemp39;
    __list __ctemp40 = new(__list);
    __ctemp40.list_tl = __env;
    __ctemp40.list_hd = ((int)__ctemp36.list_tl);
    __env = __ctemp40;
    __clos __ctemp41 = ((__clos)__lookup(3, __env));
    __list __ctemp42 = ((__list)__lookup(0, __env));
    __list __ctemp43 = new(__list);
    __ctemp43.list_tl = __env;
    __ctemp43.list_hd =
      ((int)(((__pair(*)(__list, __list))__ctemp41.clos_fun)(__ctemp42,
      __ctemp41.clos_env)).pair_fst);
    __env = __ctemp43;
    __list __ctemp44 = new(__list);
    __ctemp44.list_tl = __env;
    __ctemp44.list_hd =
      ((int)(((__pair(*)(__list, __list))__ctemp41.clos_fun)(__ctemp42,
      __ctemp41.clos_env)).pair_snd);
    __env = __ctemp44;
    int __ctemp45 = ((int)__lookup(3, __env));
    int __ctemp46 = ((int)__lookup(6, __env));
    __pair __ctemp57;
    if(__ctemp45 <= __ctemp46)
    {
      int __ctemp47 = ((int)__lookup(3, __env));
      __list __ctemp48 = ((__list)__lookup(1, __env));
      __list __ctemp49 = new(__list);
      __ctemp49.list_hd = ((int)__ctemp47);
      __ctemp49.list_tl = __ctemp48;
      __list __ctemp50 = ((__list)__lookup(0, __env));
      __pair __ctemp51 = new(__pair);
      __ctemp51.pair_fst = ((int)__ctemp49);
      __ctemp51.pair_snd = ((int)__ctemp50);
      __ctemp57 = __ctemp51;
    }
    else
    {
      __list __ctemp52 = ((__list)__lookup(1, __env));
      int __ctemp53 = ((int)__lookup(3, __env));
      __list __ctemp54 = ((__list)__lookup(0, __env));
      __list __ctemp55 = new(__list);
      __ctemp55.list_hd = ((int)__ctemp53);
      __ctemp55.list_tl = __ctemp54;
      __pair __ctemp56 = new(__pair);
      __ctemp56.pair_fst = ((int)__ctemp52);
      __ctemp56.pair_snd = ((int)__ctemp55);
      __ctemp57 = __ctemp56;
    }
    __pair __ctemp58 = __ctemp57;
    __env = __env.list_tl;
    __env = __env.list_tl;
    __ctemp38 = __ctemp58;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  return __ctemp38;
}

__list merge0__body(__pair l1l2, __list __env)
{
  __list __ctemp1 = new(__list);
  __ctemp1.list_tl = __env;
  __ctemp1.list_hd = ((int)l1l2);
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
  __list __ctemp5 = ((__list)__lookup(1, __env));
  __list __ctemp7;
  if(((int)__ctemp5) == 0)
  {
    __list __ctemp6 = ((__list)__lookup(0, __env));
    __ctemp7 = __ctemp6;
  }
  else
  {
    __list __ctemp8 = new(__list);
    __ctemp8.list_tl = __env;
    __ctemp8.list_hd = ((int)__ctemp5.list_hd);
    __env = __ctemp8;
    __list __ctemp9 = new(__list);
    __ctemp9.list_tl = __env;
    __ctemp9.list_hd = ((int)__ctemp5.list_tl);
    __env = __ctemp9;
    __list __ctemp10 = ((__list)__lookup(2, __env));
    __list __ctemp12;
    if(((int)__ctemp10) == 0)
    {
      __list __ctemp11 = ((__list)__lookup(3, __env));
      __ctemp12 = __ctemp11;
    }
    else
    {
      __list __ctemp13 = new(__list);
      __ctemp13.list_tl = __env;
      __ctemp13.list_hd = ((int)__ctemp10.list_hd);
      __env = __ctemp13;
      __list __ctemp14 = new(__list);
      __ctemp14.list_tl = __env;
      __ctemp14.list_hd = ((int)__ctemp10.list_tl);
      __env = __ctemp14;
      int __ctemp15 = ((int)__lookup(3, __env));
      int __ctemp16 = ((int)__lookup(1, __env));
      __list __ctemp29;
      if(__ctemp15 < __ctemp16)
      {
        int __ctemp17 = ((int)__lookup(3, __env));
        __clos __ctemp18 = ((__clos)__lookup(7, __env));
        __list __ctemp19 = ((__list)__lookup(2, __env));
        __list __ctemp20 = ((__list)__lookup(4, __env));
        __pair __ctemp21 = new(__pair);
        __ctemp21.pair_fst = ((int)__ctemp19);
        __ctemp21.pair_snd = ((int)__ctemp20);
        __list __ctemp22 = new(__list);
        __ctemp22.list_hd = ((int)__ctemp17);
        __ctemp22.list_tl =
          ((__list(*)(__pair, __list))__ctemp18.clos_fun)(__ctemp21,
          __ctemp18.clos_env);
        __ctemp29 = __ctemp22;
      }
      else
      {
        int __ctemp23 = ((int)__lookup(1, __env));
        __clos __ctemp24 = ((__clos)__lookup(7, __env));
        __list __ctemp25 = ((__list)__lookup(5, __env));
        __list __ctemp26 = ((__list)__lookup(0, __env));
        __pair __ctemp27 = new(__pair);
        __ctemp27.pair_fst = ((int)__ctemp25);
        __ctemp27.pair_snd = ((int)__ctemp26);
        __list __ctemp28 = new(__list);
        __ctemp28.list_hd = ((int)__ctemp23);
        __ctemp28.list_tl =
          ((__list(*)(__pair, __list))__ctemp24.clos_fun)(__ctemp27,
          __ctemp24.clos_env);
        __ctemp29 = __ctemp28;
      }
      __ctemp12 = __ctemp29;
      __env = __env.list_tl;
      __env = __env.list_tl;
    }
    __ctemp7 = __ctemp12;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  __list __ctemp30 = __ctemp7;
  __env = __env.list_tl;
  __env = __env.list_tl;
  return __ctemp30;
}

int main()
{
  __list __env = ((__list)0);
  __clos merge0_clos = new(__clos);
  merge0_clos.clos_env = __env;
  merge0_clos.clos_fun = ((int(*)())merge0__body);
  __list __ctemp31 = new(__list);
  __ctemp31.list_tl = __env;
  __ctemp31.list_hd = ((int)merge0_clos);
  __env = __ctemp31;
  merge0_clos.clos_env = __env;
  __clos partition32_clos = new(__clos);
  partition32_clos.clos_env = __env;
  partition32_clos.clos_fun = ((int(*)())partition32__body);
  __list __ctemp62 = new(__list);
  __ctemp62.list_tl = __env;
  __ctemp62.list_hd = ((int)partition32_clos);
  __env = __ctemp62;
  __clos qsort63_clos = new(__clos);
  qsort63_clos.clos_env = __env;
  qsort63_clos.clos_fun = ((int(*)())qsort63__body);
  __list __ctemp89 = new(__list);
  __ctemp89.list_tl = __env;
  __ctemp89.list_hd = ((int)qsort63_clos);
  __env = __ctemp89;
  qsort63_clos.clos_env = __env;
  __list __ctemp90 = new(__list);
  __ctemp90.list_hd = ((int)8);
  __ctemp90.list_tl = ((__list)0);
  __list __ctemp91 = new(__list);
  __ctemp91.list_hd = ((int)1);
  __ctemp91.list_tl = __ctemp90;
  __list __ctemp92 = new(__list);
  __ctemp92.list_hd = ((int)2);
  __ctemp92.list_tl = __ctemp91;
  __list __ctemp93 = new(__list);
  __ctemp93.list_hd = ((int)5);
  __ctemp93.list_tl = __ctemp92;
  __list __ctemp94 = new(__list);
  __ctemp94.list_tl = __env;
  __ctemp94.list_hd = ((int)__ctemp93);
  __env = __ctemp94;
  __clos __ctemp95 = ((__clos)__lookup(1, __env));
  __list __ctemp96 = ((__list)__lookup(0, __env));
  int __ctemp97;
  if(((int)((__list(*)(__list, __list))__ctemp95.clos_fun)(__ctemp96,
    __ctemp95.clos_env)) == 0)
  {
    __ctemp97 = 0;
  }
  else
  {
    __list __ctemp98 = new(__list);
    __ctemp98.list_tl = __env;
    __ctemp98.list_hd =
      ((int)(((__list(*)(__list, __list))__ctemp95.clos_fun)(__ctemp96,
      __ctemp95.clos_env)).list_hd);
    __env = __ctemp98;
    __list __ctemp99 = new(__list);
    __ctemp99.list_tl = __env;
    __ctemp99.list_hd =
      ((int)(((__list(*)(__list, __list))__ctemp95.clos_fun)(__ctemp96,
      __ctemp95.clos_env)).list_tl);
    __env = __ctemp99;
    int __ctemp100 = ((int)__lookup(1, __env));
    __ctemp97 = __ctemp100;
    __env = __env.list_tl;
    __env = __env.list_tl;
  }
  int __ctemp101 = __ctemp97;
  __env = __env.list_tl;
  int __ctemp102 = __ctemp101;
  __env = __env.list_tl;
  int __ctemp103 = __ctemp102;
  __env = __env.list_tl;
  int __ctemp104 = __ctemp103;
  __env = __env.list_tl;
  return __ctemp104;
}

