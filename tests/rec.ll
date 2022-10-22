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

define i32 @__fun6__body(i32 %y, %__list* %__env) {
__fun6__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp7$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp7$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %y to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp7$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp7$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 1 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp8$16 = bitcast i32 %temp22$15 to i32
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 2 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp9$21 = inttoptr i32 %temp26$20 to %__clos*
  %temp31$22 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp32$23 = bitcast i32 0 to i32
  %temp33$24 = bitcast %__list* %__env$10 to %__list*
  %temp30$25 = call i32 %temp31$22(i32 %temp32$23, %__list* %temp33$24)
  %__ctemp10$26 = bitcast i32 %temp30$25 to i32
  %temp35$27 = bitcast i32 %__ctemp8$16 to i32
  %temp41$28 = bitcast %__clos* %__ctemp9$21 to %__clos*
  %temp42$29 = getelementptr %__clos, %__clos* %temp41$28, i32 0, i32 1
  %temp40$30 = load i32 ()*, i32 ()** %temp42$29
  %temp37$31 = bitcast i32 ()* %temp40$30 to i32 (i32, %__list*)*
  %temp38$32 = bitcast i32 %__ctemp10$26 to i32
  %temp43$33 = bitcast %__clos* %__ctemp9$21 to %__clos*
  %temp44$34 = getelementptr %__clos, %__clos* %temp43$33, i32 0, i32 0
  %temp39$35 = load %__list*, %__list** %temp44$34
  %temp36$36 = call i32 %temp37$31(i32 %temp38$32, %__list* %temp39$35)
  %temp34$37 = add i32 %temp35$27, %temp36$36
  ret i32 %temp34$37
}

define %__clos* @f4__body(i32 %x, %__list* %__env) {
f4__body__entry:
  %temp45$1 = call i8* @malloc(i32 8)
  %__ctemp5$2 = bitcast i8* %temp45$1 to %__list*
  %temp47$3 = bitcast %__list* %__env to %__list*
  %temp48$4 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 1
  store %__list* %temp47$3, %__list** %temp48$4
  %temp46$5 = bitcast %__list* %temp47$3 to %__list*
  %temp52$6 = bitcast i32 %x to i32
  %temp50$7 = bitcast i32 %temp52$6 to i32
  %temp51$8 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 0
  store i32 %temp50$7, i32* %temp51$8
  %temp49$9 = bitcast i32 %temp50$7 to i32
  %__env$10 = bitcast %__list* %__ctemp5$2 to %__list*
  %temp53$11 = bitcast %__list* %__env$10 to %__list*
  %temp54$12 = call i8* @malloc(i32 8)
  %__fun6_clos$13 = bitcast i8* %temp54$12 to %__clos*
  %temp56$14 = bitcast %__list* %__env$10 to %__list*
  %temp57$15 = getelementptr %__clos, %__clos* %__fun6_clos$13, i32 0, i32 0
  store %__list* %temp56$14, %__list** %temp57$15
  %temp55$16 = bitcast %__list* %temp56$14 to %__list*
  %temp61$17 = bitcast i32 (i32, %__list*)* @__fun6__body to i32 (i32, %__list*)*
  %temp59$18 = bitcast i32 (i32, %__list*)* %temp61$17 to i32 ()*
  %temp60$19 = getelementptr %__clos, %__clos* %__fun6_clos$13, i32 0, i32 1
  store i32 ()* %temp59$18, i32 ()** %temp60$19
  %temp58$20 = bitcast i32 ()* %temp59$18 to i32 ()*
  %temp62$21 = bitcast %__clos* %__fun6_clos$13 to %__clos*
  ret %__clos* %temp62$21
}

define i32 @f0__body(i32 %x, %__list* %__env) {
f0__body__entry:
  %temp63$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp63$1 to %__list*
  %temp65$3 = bitcast %__list* %__env to %__list*
  %temp66$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp65$3, %__list** %temp66$4
  %temp64$5 = bitcast %__list* %temp65$3 to %__list*
  %temp70$6 = bitcast i32 %x to i32
  %temp68$7 = bitcast i32 %temp70$6 to i32
  %temp69$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp68$7, i32* %temp69$8
  %temp67$9 = bitcast i32 %temp68$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp71$11 = bitcast %__list* %__env$10 to %__list*
  %temp73$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp74$13 = bitcast i32 0 to i32
  %temp75$14 = bitcast %__list* %__env$10 to %__list*
  %temp72$15 = call i32 %temp73$12(i32 %temp74$13, %__list* %temp75$14)
  %__ctemp2$16 = bitcast i32 %temp72$15 to i32
  %temp77$17 = bitcast i32 %__ctemp2$16 to i32
  %temp78$18 = bitcast i32 1 to i32
  %temp76$19 = sub i32 %temp77$17, %temp78$18
  ret i32 %temp76$19
}

define i32 @main() {
main__entry:
  %temp79$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp79$1 to %__list*
  %temp80$3 = call i8* @malloc(i32 8)
  %f0_clos$4 = bitcast i8* %temp80$3 to %__clos*
  %temp82$5 = bitcast %__list* %__env$2 to %__list*
  %temp83$6 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 0
  store %__list* %temp82$5, %__list** %temp83$6
  %temp81$7 = bitcast %__list* %temp82$5 to %__list*
  %temp87$8 = bitcast i32 (i32, %__list*)* @f0__body to i32 (i32, %__list*)*
  %temp85$9 = bitcast i32 (i32, %__list*)* %temp87$8 to i32 ()*
  %temp86$10 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 1
  store i32 ()* %temp85$9, i32 ()** %temp86$10
  %temp84$11 = bitcast i32 ()* %temp85$9 to i32 ()*
  %temp88$12 = call i8* @malloc(i32 8)
  %__ctemp3$13 = bitcast i8* %temp88$12 to %__list*
  %temp90$14 = bitcast %__list* %__env$2 to %__list*
  %temp91$15 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 1
  store %__list* %temp90$14, %__list** %temp91$15
  %temp89$16 = bitcast %__list* %temp90$14 to %__list*
  %temp95$17 = bitcast %__clos* %f0_clos$4 to %__clos*
  %temp93$18 = ptrtoint %__clos* %temp95$17 to i32
  %temp94$19 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 0
  store i32 %temp93$18, i32* %temp94$19
  %temp92$20 = bitcast i32 %temp93$18 to i32
  %__env$21 = bitcast %__list* %__ctemp3$13 to %__list*
  %temp96$22 = bitcast %__list* %__env$21 to %__list*
  %temp97$23 = call i8* @malloc(i32 8)
  %f4_clos$24 = bitcast i8* %temp97$23 to %__clos*
  %temp99$25 = bitcast %__list* %__env$21 to %__list*
  %temp100$26 = getelementptr %__clos, %__clos* %f4_clos$24, i32 0, i32 0
  store %__list* %temp99$25, %__list** %temp100$26
  %temp98$27 = bitcast %__list* %temp99$25 to %__list*
  %temp104$28 = bitcast %__clos* (i32, %__list*)* @f4__body to %__clos* (i32, %__list*)*
  %temp102$29 = bitcast %__clos* (i32, %__list*)* %temp104$28 to i32 ()*
  %temp103$30 = getelementptr %__clos, %__clos* %f4_clos$24, i32 0, i32 1
  store i32 ()* %temp102$29, i32 ()** %temp103$30
  %temp101$31 = bitcast i32 ()* %temp102$29 to i32 ()*
  %temp105$32 = call i8* @malloc(i32 8)
  %__ctemp11$33 = bitcast i8* %temp105$32 to %__list*
  %temp107$34 = bitcast %__list* %__env$21 to %__list*
  %temp108$35 = getelementptr %__list, %__list* %__ctemp11$33, i32 0, i32 1
  store %__list* %temp107$34, %__list** %temp108$35
  %temp106$36 = bitcast %__list* %temp107$34 to %__list*
  %temp112$37 = bitcast %__clos* %f4_clos$24 to %__clos*
  %temp110$38 = ptrtoint %__clos* %temp112$37 to i32
  %temp111$39 = getelementptr %__list, %__list* %__ctemp11$33, i32 0, i32 0
  store i32 %temp110$38, i32* %temp111$39
  %temp109$40 = bitcast i32 %temp110$38 to i32
  %__env$41 = bitcast %__list* %__ctemp11$33 to %__list*
  %temp113$42 = bitcast %__list* %__env$41 to %__list*
  %temp115$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp116$44 = bitcast i32 0 to i32
  %temp117$45 = bitcast %__list* %__env$41 to %__list*
  %temp114$46 = call i32 %temp115$43(i32 %temp116$44, %__list* %temp117$45)
  %__ctemp12$47 = inttoptr i32 %temp114$46 to %__clos*
  %temp128$48 = bitcast %__clos* %__ctemp12$47 to %__clos*
  %temp129$49 = getelementptr %__clos, %__clos* %temp128$48, i32 0, i32 1
  %temp127$50 = load i32 ()*, i32 ()** %temp129$49
  %temp124$51 = bitcast i32 ()* %temp127$50 to %__clos* (i32, %__list*)*
  %temp125$52 = bitcast i32 1 to i32
  %temp130$53 = bitcast %__clos* %__ctemp12$47 to %__clos*
  %temp131$54 = getelementptr %__clos, %__clos* %temp130$53, i32 0, i32 0
  %temp126$55 = load %__list*, %__list** %temp131$54
  %temp122$56 = call %__clos* %temp124$51(i32 %temp125$52, %__list* %temp126$55)
  %temp123$57 = getelementptr %__clos, %__clos* %temp122$56, i32 0, i32 1
  %temp121$58 = load i32 ()*, i32 ()** %temp123$57
  %temp118$59 = bitcast i32 ()* %temp121$58 to i32 (i32, %__list*)*
  %temp119$60 = bitcast i32 2 to i32
  %temp138$61 = bitcast %__clos* %__ctemp12$47 to %__clos*
  %temp139$62 = getelementptr %__clos, %__clos* %temp138$61, i32 0, i32 1
  %temp137$63 = load i32 ()*, i32 ()** %temp139$62
  %temp134$64 = bitcast i32 ()* %temp137$63 to %__clos* (i32, %__list*)*
  %temp135$65 = bitcast i32 1 to i32
  %temp140$66 = bitcast %__clos* %__ctemp12$47 to %__clos*
  %temp141$67 = getelementptr %__clos, %__clos* %temp140$66, i32 0, i32 0
  %temp136$68 = load %__list*, %__list** %temp141$67
  %temp132$69 = call %__clos* %temp134$64(i32 %temp135$65, %__list* %temp136$68)
  %temp133$70 = getelementptr %__clos, %__clos* %temp132$69, i32 0, i32 0
  %temp120$71 = load %__list*, %__list** %temp133$70
  %__ctemp13$72 = call i32 %temp118$59(i32 %temp119$60, %__list* %temp120$71)
  %temp143$73 = bitcast %__list* %__env$41 to %__list*
  %temp144$74 = getelementptr %__list, %__list* %temp143$73, i32 0, i32 1
  %__env$75 = load %__list*, %__list** %temp144$74
  %temp142$76 = bitcast %__list* %__env$75 to %__list*
  %__ctemp14$77 = bitcast i32 %__ctemp13$72 to i32
  %temp146$78 = bitcast %__list* %__env$75 to %__list*
  %temp147$79 = getelementptr %__list, %__list* %temp146$78, i32 0, i32 1
  %__env$80 = load %__list*, %__list** %temp147$79
  %temp145$81 = bitcast %__list* %__env$80 to %__list*
  %temp148$82 = bitcast i32 %__ctemp14$77 to i32
  ret i32 %temp148$82
}
