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

define i32 @__fun4__body(i32 %x, %__list* %__env) {
__fun4__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp5$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %x to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp5$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 1 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp6$16 = inttoptr i32 %temp22$15 to %__clos*
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 0 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp7$21 = bitcast i32 %temp26$20 to i32
  %temp35$22 = bitcast %__clos* %__ctemp6$16 to %__clos*
  %temp36$23 = getelementptr %__clos, %__clos* %temp35$22, i32 0, i32 1
  %temp34$24 = load i32 ()*, i32 ()** %temp36$23
  %temp31$25 = bitcast i32 ()* %temp34$24 to i32 (i32, %__list*)*
  %temp32$26 = bitcast i32 %__ctemp7$21 to i32
  %temp37$27 = bitcast %__clos* %__ctemp6$16 to %__clos*
  %temp38$28 = getelementptr %__clos, %__clos* %temp37$27, i32 0, i32 0
  %temp33$29 = load %__list*, %__list** %temp38$28
  %temp30$30 = call i32 %temp31$25(i32 %temp32$26, %__list* %temp33$29)
  ret i32 %temp30$30
}

define i32 @f0__body(i32 %x, %__list* %__env) {
f0__body__entry:
  %temp39$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp39$1 to %__list*
  %temp41$3 = bitcast %__list* %__env to %__list*
  %temp42$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp41$3, %__list** %temp42$4
  %temp40$5 = bitcast %__list* %temp41$3 to %__list*
  %temp46$6 = bitcast i32 %x to i32
  %temp44$7 = bitcast i32 %temp46$6 to i32
  %temp45$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp44$7, i32* %temp45$8
  %temp43$9 = bitcast i32 %temp44$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp47$11 = bitcast %__list* %__env$10 to %__list*
  %temp49$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp50$13 = bitcast i32 0 to i32
  %temp51$14 = bitcast %__list* %__env$10 to %__list*
  %temp48$15 = call i32 %temp49$12(i32 %temp50$13, %__list* %temp51$14)
  %__ctemp2$16 = bitcast i32 %temp48$15 to i32
  %temp53$17 = bitcast i32 %__ctemp2$16 to i32
  %temp54$18 = bitcast i32 1 to i32
  %temp52$19 = add i32 %temp53$17, %temp54$18
  ret i32 %temp52$19
}

define i32 @main() {
main__entry:
  %temp55$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp55$1 to %__list*
  %temp56$3 = call i8* @malloc(i32 8)
  %f0_clos$4 = bitcast i8* %temp56$3 to %__clos*
  %temp58$5 = bitcast %__list* %__env$2 to %__list*
  %temp59$6 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 0
  store %__list* %temp58$5, %__list** %temp59$6
  %temp57$7 = bitcast %__list* %temp58$5 to %__list*
  %temp63$8 = bitcast i32 (i32, %__list*)* @f0__body to i32 (i32, %__list*)*
  %temp61$9 = bitcast i32 (i32, %__list*)* %temp63$8 to i32 ()*
  %temp62$10 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 1
  store i32 ()* %temp61$9, i32 ()** %temp62$10
  %temp60$11 = bitcast i32 ()* %temp61$9 to i32 ()*
  %temp64$12 = call i8* @malloc(i32 8)
  %__ctemp3$13 = bitcast i8* %temp64$12 to %__list*
  %temp66$14 = bitcast %__list* %__env$2 to %__list*
  %temp67$15 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 1
  store %__list* %temp66$14, %__list** %temp67$15
  %temp65$16 = bitcast %__list* %temp66$14 to %__list*
  %temp71$17 = bitcast %__clos* %f0_clos$4 to %__clos*
  %temp69$18 = ptrtoint %__clos* %temp71$17 to i32
  %temp70$19 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 0
  store i32 %temp69$18, i32* %temp70$19
  %temp68$20 = bitcast i32 %temp69$18 to i32
  %__env$21 = bitcast %__list* %__ctemp3$13 to %__list*
  %temp72$22 = bitcast %__list* %__env$21 to %__list*
  %temp73$23 = call i8* @malloc(i32 8)
  %__fun4_clos$24 = bitcast i8* %temp73$23 to %__clos*
  %temp75$25 = bitcast %__list* %__env$21 to %__list*
  %temp76$26 = getelementptr %__clos, %__clos* %__fun4_clos$24, i32 0, i32 0
  store %__list* %temp75$25, %__list** %temp76$26
  %temp74$27 = bitcast %__list* %temp75$25 to %__list*
  %temp80$28 = bitcast i32 (i32, %__list*)* @__fun4__body to i32 (i32, %__list*)*
  %temp78$29 = bitcast i32 (i32, %__list*)* %temp80$28 to i32 ()*
  %temp79$30 = getelementptr %__clos, %__clos* %__fun4_clos$24, i32 0, i32 1
  store i32 ()* %temp78$29, i32 ()** %temp79$30
  %temp77$31 = bitcast i32 ()* %temp78$29 to i32 ()*
  %temp81$32 = call i8* @malloc(i32 8)
  %__ctemp8$33 = bitcast i8* %temp81$32 to %__list*
  %temp83$34 = bitcast %__list* %__env$21 to %__list*
  %temp84$35 = getelementptr %__list, %__list* %__ctemp8$33, i32 0, i32 1
  store %__list* %temp83$34, %__list** %temp84$35
  %temp82$36 = bitcast %__list* %temp83$34 to %__list*
  %temp88$37 = bitcast %__clos* %__fun4_clos$24 to %__clos*
  %temp86$38 = ptrtoint %__clos* %temp88$37 to i32
  %temp87$39 = getelementptr %__list, %__list* %__ctemp8$33, i32 0, i32 0
  store i32 %temp86$38, i32* %temp87$39
  %temp85$40 = bitcast i32 %temp86$38 to i32
  %__env$41 = bitcast %__list* %__ctemp8$33 to %__list*
  %temp89$42 = bitcast %__list* %__env$41 to %__list*
  %temp91$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp92$44 = bitcast i32 0 to i32
  %temp93$45 = bitcast %__list* %__env$41 to %__list*
  %temp90$46 = call i32 %temp91$43(i32 %temp92$44, %__list* %temp93$45)
  %__ctemp9$47 = inttoptr i32 %temp90$46 to %__clos*
  %temp98$48 = bitcast %__clos* %__ctemp9$47 to %__clos*
  %temp99$49 = getelementptr %__clos, %__clos* %temp98$48, i32 0, i32 1
  %temp97$50 = load i32 ()*, i32 ()** %temp99$49
  %temp94$51 = bitcast i32 ()* %temp97$50 to i32 (i32, %__list*)*
  %temp95$52 = bitcast i32 39 to i32
  %temp100$53 = bitcast %__clos* %__ctemp9$47 to %__clos*
  %temp101$54 = getelementptr %__clos, %__clos* %temp100$53, i32 0, i32 0
  %temp96$55 = load %__list*, %__list** %temp101$54
  %__ctemp10$56 = call i32 %temp94$51(i32 %temp95$52, %__list* %temp96$55)
  %temp103$57 = bitcast %__list* %__env$41 to %__list*
  %temp104$58 = getelementptr %__list, %__list* %temp103$57, i32 0, i32 1
  %__env$59 = load %__list*, %__list** %temp104$58
  %temp102$60 = bitcast %__list* %__env$59 to %__list*
  %__ctemp11$61 = bitcast i32 %__ctemp10$56 to i32
  %temp106$62 = bitcast %__list* %__env$59 to %__list*
  %temp107$63 = getelementptr %__list, %__list* %temp106$62, i32 0, i32 1
  %__env$64 = load %__list*, %__list** %temp107$63
  %temp105$65 = bitcast %__list* %__env$64 to %__list*
  %temp108$66 = bitcast i32 %__ctemp11$61 to i32
  ret i32 %temp108$66
}
