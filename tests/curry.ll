%__clos = type { %__list*, i32 ()*
}
%__list = type { i32, %__list*
}
%__pair = type { i32, i32
}
declare i8* @malloc(i32)
define i32 @__lookup(i32 %i, %__list* %__env) {
__lookup__entry:
  br label %label1
label1:
  %temp6$1 = phi i32 [%temp6$20, %label2], [0, %__lookup__entry]
  %temp5$2 = phi i32 [%temp5$19, %label2], [0, %__lookup__entry]
  %temp4$3 = phi i32 [%temp4$22, %label2], [0, %__lookup__entry]
  %temp3$4 = phi %__list** [%temp3$16, %label2], [null, %__lookup__entry]
  %temp2$5 = phi %__list* [%temp2$15, %label2], [null, %__lookup__entry]
  %temp1$6 = phi %__list* [%temp1$18, %label2], [null, %__lookup__entry]
  %i$7 = phi i32 [%i$21, %label2], [%i, %__lookup__entry]
  %__env$8 = phi %__list* [%__env$17, %label2], [%__env, %__lookup__entry]
  %temp8$9 = bitcast i32 %i$7 to i32
  %temp9$10 = bitcast i32 0 to i32
  %temp7$11 = icmp sgt i32 %temp8$9, %temp9$10
  br i1 %temp7$11, label %label2, label %label3
label2:
  %temp2$15 = bitcast %__list* %__env$8 to %__list*
  %temp3$16 = getelementptr %__list, %__list* %temp2$15, i32 0, i32 1
  %__env$17 = load %__list*, %__list** %temp3$16
  %temp1$18 = bitcast %__list* %__env$17 to %__list*
  %temp5$19 = bitcast i32 %i$7 to i32
  %temp6$20 = bitcast i32 1 to i32
  %i$21 = sub i32 %temp5$19, %temp6$20
  %temp4$22 = bitcast i32 %i$21 to i32
  br label %label1
label3:
  %temp11$12 = bitcast %__list* %__env$8 to %__list*
  %temp12$13 = getelementptr %__list, %__list* %temp11$12, i32 0, i32 0
  %temp10$14 = load i32, i32* %temp12$13
  ret i32 %temp10$14
}

define i32 @__fun2__body(i32 %y, %__list* %__env) {
__fun2__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp3$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp3$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %y to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp3$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp3$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 1 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp4$16 = bitcast i32 %temp22$15 to i32
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 0 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp5$21 = bitcast i32 %temp26$20 to i32
  %temp31$22 = bitcast i32 %__ctemp4$16 to i32
  %temp32$23 = bitcast i32 %__ctemp5$21 to i32
  %temp30$24 = add i32 %temp31$22, %temp32$23
  ret i32 %temp30$24
}

define %__clos* @__fun0__body(i32 %x, %__list* %__env) {
__fun0__body__entry:
  %temp33$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp33$1 to %__list*
  %temp35$3 = bitcast %__list* %__env to %__list*
  %temp36$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp35$3, %__list** %temp36$4
  %temp34$5 = bitcast %__list* %temp35$3 to %__list*
  %temp40$6 = bitcast i32 %x to i32
  %temp38$7 = bitcast i32 %temp40$6 to i32
  %temp39$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp38$7, i32* %temp39$8
  %temp37$9 = bitcast i32 %temp38$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp41$11 = bitcast %__list* %__env$10 to %__list*
  %temp42$12 = call i8* @malloc(i32 8)
  %__fun2_clos$13 = bitcast i8* %temp42$12 to %__clos*
  %temp44$14 = bitcast %__list* %__env$10 to %__list*
  %temp45$15 = getelementptr %__clos, %__clos* %__fun2_clos$13, i32 0, i32 0
  store %__list* %temp44$14, %__list** %temp45$15
  %temp43$16 = bitcast %__list* %temp44$14 to %__list*
  %temp49$17 = bitcast i32 (i32, %__list*)* @__fun2__body to i32 (i32, %__list*)*
  %temp47$18 = bitcast i32 (i32, %__list*)* %temp49$17 to i32 ()*
  %temp48$19 = getelementptr %__clos, %__clos* %__fun2_clos$13, i32 0, i32 1
  store i32 ()* %temp47$18, i32 ()** %temp48$19
  %temp46$20 = bitcast i32 ()* %temp47$18 to i32 ()*
  %temp50$21 = bitcast %__clos* %__fun2_clos$13 to %__clos*
  ret %__clos* %temp50$21
}

define i32 @main() {
main__entry:
  %temp51$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp51$1 to %__list*
  %temp52$3 = call i8* @malloc(i32 8)
  %__fun0_clos$4 = bitcast i8* %temp52$3 to %__clos*
  %temp54$5 = bitcast %__list* %__env$2 to %__list*
  %temp55$6 = getelementptr %__clos, %__clos* %__fun0_clos$4, i32 0, i32 0
  store %__list* %temp54$5, %__list** %temp55$6
  %temp53$7 = bitcast %__list* %temp54$5 to %__list*
  %temp59$8 = bitcast %__clos* (i32, %__list*)* @__fun0__body to %__clos* (i32, %__list*)*
  %temp57$9 = bitcast %__clos* (i32, %__list*)* %temp59$8 to i32 ()*
  %temp58$10 = getelementptr %__clos, %__clos* %__fun0_clos$4, i32 0, i32 1
  store i32 ()* %temp57$9, i32 ()** %temp58$10
  %temp56$11 = bitcast i32 ()* %temp57$9 to i32 ()*
  %temp60$12 = call i8* @malloc(i32 8)
  %__ctemp6$13 = bitcast i8* %temp60$12 to %__list*
  %temp62$14 = bitcast %__list* %__env$2 to %__list*
  %temp63$15 = getelementptr %__list, %__list* %__ctemp6$13, i32 0, i32 1
  store %__list* %temp62$14, %__list** %temp63$15
  %temp61$16 = bitcast %__list* %temp62$14 to %__list*
  %temp67$17 = bitcast %__clos* %__fun0_clos$4 to %__clos*
  %temp65$18 = ptrtoint %__clos* %temp67$17 to i32
  %temp66$19 = getelementptr %__list, %__list* %__ctemp6$13, i32 0, i32 0
  store i32 %temp65$18, i32* %temp66$19
  %temp64$20 = bitcast i32 %temp65$18 to i32
  %__env$21 = bitcast %__list* %__ctemp6$13 to %__list*
  %temp68$22 = bitcast %__list* %__env$21 to %__list*
  %temp70$23 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp71$24 = bitcast i32 0 to i32
  %temp72$25 = bitcast %__list* %__env$21 to %__list*
  %temp69$26 = call i32 %temp70$23(i32 %temp71$24, %__list* %temp72$25)
  %__ctemp7$27 = inttoptr i32 %temp69$26 to %__clos*
  %temp73$28 = call i8* @malloc(i32 8)
  %__ctemp8$29 = bitcast i8* %temp73$28 to %__list*
  %temp75$30 = bitcast %__list* %__env$21 to %__list*
  %temp76$31 = getelementptr %__list, %__list* %__ctemp8$29, i32 0, i32 1
  store %__list* %temp75$30, %__list** %temp76$31
  %temp74$32 = bitcast %__list* %temp75$30 to %__list*
  %temp85$33 = bitcast %__clos* %__ctemp7$27 to %__clos*
  %temp86$34 = getelementptr %__clos, %__clos* %temp85$33, i32 0, i32 1
  %temp84$35 = load i32 ()*, i32 ()** %temp86$34
  %temp81$36 = bitcast i32 ()* %temp84$35 to %__clos* (i32, %__list*)*
  %temp82$37 = bitcast i32 1 to i32
  %temp87$38 = bitcast %__clos* %__ctemp7$27 to %__clos*
  %temp88$39 = getelementptr %__clos, %__clos* %temp87$38, i32 0, i32 0
  %temp83$40 = load %__list*, %__list** %temp88$39
  %temp80$41 = call %__clos* %temp81$36(i32 %temp82$37, %__list* %temp83$40)
  %temp78$42 = ptrtoint %__clos* %temp80$41 to i32
  %temp79$43 = getelementptr %__list, %__list* %__ctemp8$29, i32 0, i32 0
  store i32 %temp78$42, i32* %temp79$43
  %temp77$44 = bitcast i32 %temp78$42 to i32
  %__env$45 = bitcast %__list* %__ctemp8$29 to %__list*
  %temp89$46 = bitcast %__list* %__env$45 to %__list*
  %temp91$47 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp92$48 = bitcast i32 0 to i32
  %temp93$49 = bitcast %__list* %__env$45 to %__list*
  %temp90$50 = call i32 %temp91$47(i32 %temp92$48, %__list* %temp93$49)
  %__ctemp9$51 = inttoptr i32 %temp90$50 to %__clos*
  %temp98$52 = bitcast %__clos* %__ctemp9$51 to %__clos*
  %temp99$53 = getelementptr %__clos, %__clos* %temp98$52, i32 0, i32 1
  %temp97$54 = load i32 ()*, i32 ()** %temp99$53
  %temp94$55 = bitcast i32 ()* %temp97$54 to i32 (i32, %__list*)*
  %temp95$56 = bitcast i32 2 to i32
  %temp100$57 = bitcast %__clos* %__ctemp9$51 to %__clos*
  %temp101$58 = getelementptr %__clos, %__clos* %temp100$57, i32 0, i32 0
  %temp96$59 = load %__list*, %__list** %temp101$58
  %__ctemp10$60 = call i32 %temp94$55(i32 %temp95$56, %__list* %temp96$59)
  %temp103$61 = bitcast %__list* %__env$45 to %__list*
  %temp104$62 = getelementptr %__list, %__list* %temp103$61, i32 0, i32 1
  %__env$63 = load %__list*, %__list** %temp104$62
  %temp102$64 = bitcast %__list* %__env$63 to %__list*
  %__ctemp11$65 = bitcast i32 %__ctemp10$60 to i32
  %temp106$66 = bitcast %__list* %__env$63 to %__list*
  %temp107$67 = getelementptr %__list, %__list* %temp106$66, i32 0, i32 1
  %__env$68 = load %__list*, %__list** %temp107$67
  %temp105$69 = bitcast %__list* %__env$68 to %__list*
  %temp108$70 = bitcast i32 %__ctemp11$65 to i32
  ret i32 %temp108$70
}
