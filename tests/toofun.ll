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
  %temp24$13 = bitcast i32 0 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp6$16 = bitcast i32 %temp22$15 to i32
  %temp27$17 = bitcast i32 %__ctemp6$16 to i32
  %temp28$18 = bitcast i32 1 to i32
  %temp26$19 = sub i32 %temp27$17, %temp28$18
  ret i32 %temp26$19
}

define i32 @__fun0__body(i32 %x, %__list* %__env) {
__fun0__body__entry:
  %temp29$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp29$1 to %__list*
  %temp31$3 = bitcast %__list* %__env to %__list*
  %temp32$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp31$3, %__list** %temp32$4
  %temp30$5 = bitcast %__list* %temp31$3 to %__list*
  %temp36$6 = bitcast i32 %x to i32
  %temp34$7 = bitcast i32 %temp36$6 to i32
  %temp35$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp34$7, i32* %temp35$8
  %temp33$9 = bitcast i32 %temp34$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp37$11 = bitcast %__list* %__env$10 to %__list*
  %temp39$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp40$13 = bitcast i32 0 to i32
  %temp41$14 = bitcast %__list* %__env$10 to %__list*
  %temp38$15 = call i32 %temp39$12(i32 %temp40$13, %__list* %temp41$14)
  %__ctemp2$16 = bitcast i32 %temp38$15 to i32
  %temp43$17 = bitcast i32 1 to i32
  %temp44$18 = bitcast i32 %__ctemp2$16 to i32
  %temp42$19 = add i32 %temp43$17, %temp44$18
  ret i32 %temp42$19
}

define i32 @main() {
main__entry:
  %temp45$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp45$1 to %__list*
  %temp46$3 = call i8* @malloc(i32 8)
  %__fun0_clos$4 = bitcast i8* %temp46$3 to %__clos*
  %temp48$5 = bitcast %__list* %__env$2 to %__list*
  %temp49$6 = getelementptr %__clos, %__clos* %__fun0_clos$4, i32 0, i32 0
  store %__list* %temp48$5, %__list** %temp49$6
  %temp47$7 = bitcast %__list* %temp48$5 to %__list*
  %temp53$8 = bitcast i32 (i32, %__list*)* @__fun0__body to i32 (i32, %__list*)*
  %temp51$9 = bitcast i32 (i32, %__list*)* %temp53$8 to i32 ()*
  %temp52$10 = getelementptr %__clos, %__clos* %__fun0_clos$4, i32 0, i32 1
  store i32 ()* %temp51$9, i32 ()** %temp52$10
  %temp50$11 = bitcast i32 ()* %temp51$9 to i32 ()*
  %temp54$12 = call i8* @malloc(i32 8)
  %__ctemp3$13 = bitcast i8* %temp54$12 to %__list*
  %temp56$14 = bitcast %__list* %__env$2 to %__list*
  %temp57$15 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 1
  store %__list* %temp56$14, %__list** %temp57$15
  %temp55$16 = bitcast %__list* %temp56$14 to %__list*
  %temp61$17 = bitcast %__clos* %__fun0_clos$4 to %__clos*
  %temp59$18 = ptrtoint %__clos* %temp61$17 to i32
  %temp60$19 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 0
  store i32 %temp59$18, i32* %temp60$19
  %temp58$20 = bitcast i32 %temp59$18 to i32
  %__env$21 = bitcast %__list* %__ctemp3$13 to %__list*
  %temp62$22 = bitcast %__list* %__env$21 to %__list*
  %temp63$23 = call i8* @malloc(i32 8)
  %__fun4_clos$24 = bitcast i8* %temp63$23 to %__clos*
  %temp65$25 = bitcast %__list* %__env$21 to %__list*
  %temp66$26 = getelementptr %__clos, %__clos* %__fun4_clos$24, i32 0, i32 0
  store %__list* %temp65$25, %__list** %temp66$26
  %temp64$27 = bitcast %__list* %temp65$25 to %__list*
  %temp70$28 = bitcast i32 (i32, %__list*)* @__fun4__body to i32 (i32, %__list*)*
  %temp68$29 = bitcast i32 (i32, %__list*)* %temp70$28 to i32 ()*
  %temp69$30 = getelementptr %__clos, %__clos* %__fun4_clos$24, i32 0, i32 1
  store i32 ()* %temp68$29, i32 ()** %temp69$30
  %temp67$31 = bitcast i32 ()* %temp68$29 to i32 ()*
  %temp71$32 = call i8* @malloc(i32 8)
  %__ctemp7$33 = bitcast i8* %temp71$32 to %__list*
  %temp73$34 = bitcast %__list* %__env$21 to %__list*
  %temp74$35 = getelementptr %__list, %__list* %__ctemp7$33, i32 0, i32 1
  store %__list* %temp73$34, %__list** %temp74$35
  %temp72$36 = bitcast %__list* %temp73$34 to %__list*
  %temp78$37 = bitcast %__clos* %__fun4_clos$24 to %__clos*
  %temp76$38 = ptrtoint %__clos* %temp78$37 to i32
  %temp77$39 = getelementptr %__list, %__list* %__ctemp7$33, i32 0, i32 0
  store i32 %temp76$38, i32* %temp77$39
  %temp75$40 = bitcast i32 %temp76$38 to i32
  %__env$41 = bitcast %__list* %__ctemp7$33 to %__list*
  %temp79$42 = bitcast %__list* %__env$41 to %__list*
  %temp81$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp82$44 = bitcast i32 1 to i32
  %temp83$45 = bitcast %__list* %__env$41 to %__list*
  %temp80$46 = call i32 %temp81$43(i32 %temp82$44, %__list* %temp83$45)
  %__ctemp8$47 = inttoptr i32 %temp80$46 to %__clos*
  %temp85$48 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp86$49 = bitcast i32 0 to i32
  %temp87$50 = bitcast %__list* %__env$41 to %__list*
  %temp84$51 = call i32 %temp85$48(i32 %temp86$49, %__list* %temp87$50)
  %__ctemp9$52 = inttoptr i32 %temp84$51 to %__clos*
  %temp94$53 = bitcast %__clos* %__ctemp8$47 to %__clos*
  %temp95$54 = getelementptr %__clos, %__clos* %temp94$53, i32 0, i32 1
  %temp93$55 = load i32 ()*, i32 ()** %temp95$54
  %temp90$56 = bitcast i32 ()* %temp93$55 to i32 (i32, %__list*)*
  %temp91$57 = bitcast i32 1 to i32
  %temp96$58 = bitcast %__clos* %__ctemp8$47 to %__clos*
  %temp97$59 = getelementptr %__clos, %__clos* %temp96$58, i32 0, i32 0
  %temp92$60 = load %__list*, %__list** %temp97$59
  %temp88$61 = call i32 %temp90$56(i32 %temp91$57, %__list* %temp92$60)
  %temp102$62 = bitcast %__clos* %__ctemp9$52 to %__clos*
  %temp103$63 = getelementptr %__clos, %__clos* %temp102$62, i32 0, i32 1
  %temp101$64 = load i32 ()*, i32 ()** %temp103$63
  %temp98$65 = bitcast i32 ()* %temp101$64 to i32 (i32, %__list*)*
  %temp99$66 = bitcast i32 3 to i32
  %temp104$67 = bitcast %__clos* %__ctemp9$52 to %__clos*
  %temp105$68 = getelementptr %__clos, %__clos* %temp104$67, i32 0, i32 0
  %temp100$69 = load %__list*, %__list** %temp105$68
  %temp89$70 = call i32 %temp98$65(i32 %temp99$66, %__list* %temp100$69)
  %__ctemp10$71 = add i32 %temp88$61, %temp89$70
  %temp107$72 = bitcast %__list* %__env$41 to %__list*
  %temp108$73 = getelementptr %__list, %__list* %temp107$72, i32 0, i32 1
  %__env$74 = load %__list*, %__list** %temp108$73
  %temp106$75 = bitcast %__list* %__env$74 to %__list*
  %__ctemp11$76 = bitcast i32 %__ctemp10$71 to i32
  %temp110$77 = bitcast %__list* %__env$74 to %__list*
  %temp111$78 = getelementptr %__list, %__list* %temp110$77, i32 0, i32 1
  %__env$79 = load %__list*, %__list** %temp111$78
  %temp109$80 = bitcast %__list* %__env$79 to %__list*
  %temp112$81 = bitcast i32 %__ctemp11$76 to i32
  ret i32 %temp112$81
}
