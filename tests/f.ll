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

define i32 @__fun14__body(i32 %x, %__list* %__env) {
__fun14__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp15$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp15$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %x to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp15$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp15$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 1 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp16$16 = inttoptr i32 %temp22$15 to %__clos*
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 0 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp17$21 = bitcast i32 %temp26$20 to i32
  %temp35$22 = bitcast %__clos* %__ctemp16$16 to %__clos*
  %temp36$23 = getelementptr %__clos, %__clos* %temp35$22, i32 0, i32 1
  %temp34$24 = load i32 ()*, i32 ()** %temp36$23
  %temp31$25 = bitcast i32 ()* %temp34$24 to i32 (i32, %__list*)*
  %temp32$26 = bitcast i32 %__ctemp17$21 to i32
  %temp37$27 = bitcast %__clos* %__ctemp16$16 to %__clos*
  %temp38$28 = getelementptr %__clos, %__clos* %temp37$27, i32 0, i32 0
  %temp33$29 = load %__list*, %__list** %temp38$28
  %temp30$30 = call i32 %temp31$25(i32 %temp32$26, %__list* %temp33$29)
  ret i32 %temp30$30
}

define %__clos* @f_this12__body(%__clos* %f, %__list* %__env) {
f_this12__body__entry:
  %temp39$1 = call i8* @malloc(i32 8)
  %__ctemp13$2 = bitcast i8* %temp39$1 to %__list*
  %temp41$3 = bitcast %__list* %__env to %__list*
  %temp42$4 = getelementptr %__list, %__list* %__ctemp13$2, i32 0, i32 1
  store %__list* %temp41$3, %__list** %temp42$4
  %temp40$5 = bitcast %__list* %temp41$3 to %__list*
  %temp46$6 = bitcast %__clos* %f to %__clos*
  %temp44$7 = ptrtoint %__clos* %temp46$6 to i32
  %temp45$8 = getelementptr %__list, %__list* %__ctemp13$2, i32 0, i32 0
  store i32 %temp44$7, i32* %temp45$8
  %temp43$9 = bitcast i32 %temp44$7 to i32
  %__env$10 = bitcast %__list* %__ctemp13$2 to %__list*
  %temp47$11 = bitcast %__list* %__env$10 to %__list*
  %temp48$12 = call i8* @malloc(i32 8)
  %__fun14_clos$13 = bitcast i8* %temp48$12 to %__clos*
  %temp50$14 = bitcast %__list* %__env$10 to %__list*
  %temp51$15 = getelementptr %__clos, %__clos* %__fun14_clos$13, i32 0, i32 0
  store %__list* %temp50$14, %__list** %temp51$15
  %temp49$16 = bitcast %__list* %temp50$14 to %__list*
  %temp55$17 = bitcast i32 (i32, %__list*)* @__fun14__body to i32 (i32, %__list*)*
  %temp53$18 = bitcast i32 (i32, %__list*)* %temp55$17 to i32 ()*
  %temp54$19 = getelementptr %__clos, %__clos* %__fun14_clos$13, i32 0, i32 1
  store i32 ()* %temp53$18, i32 ()** %temp54$19
  %temp52$20 = bitcast i32 ()* %temp53$18 to i32 ()*
  %temp56$21 = bitcast %__clos* %__fun14_clos$13 to %__clos*
  ret %__clos* %temp56$21
}

define i32 @f8__body(i32 %x, %__list* %__env) {
f8__body__entry:
  %temp57$1 = call i8* @malloc(i32 8)
  %__ctemp9$2 = bitcast i8* %temp57$1 to %__list*
  %temp59$3 = bitcast %__list* %__env to %__list*
  %temp60$4 = getelementptr %__list, %__list* %__ctemp9$2, i32 0, i32 1
  store %__list* %temp59$3, %__list** %temp60$4
  %temp58$5 = bitcast %__list* %temp59$3 to %__list*
  %temp64$6 = bitcast i32 %x to i32
  %temp62$7 = bitcast i32 %temp64$6 to i32
  %temp63$8 = getelementptr %__list, %__list* %__ctemp9$2, i32 0, i32 0
  store i32 %temp62$7, i32* %temp63$8
  %temp61$9 = bitcast i32 %temp62$7 to i32
  %__env$10 = bitcast %__list* %__ctemp9$2 to %__list*
  %temp65$11 = bitcast %__list* %__env$10 to %__list*
  %temp67$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp68$13 = bitcast i32 0 to i32
  %temp69$14 = bitcast %__list* %__env$10 to %__list*
  %temp66$15 = call i32 %temp67$12(i32 %temp68$13, %__list* %temp69$14)
  %__ctemp10$16 = bitcast i32 %temp66$15 to i32
  %temp71$17 = bitcast i32 %__ctemp10$16 to i32
  %temp72$18 = bitcast i32 3 to i32
  %temp70$19 = add i32 %temp71$17, %temp72$18
  ret i32 %temp70$19
}

define i32 @f4__body(i32 %x, %__list* %__env) {
f4__body__entry:
  %temp73$1 = call i8* @malloc(i32 8)
  %__ctemp5$2 = bitcast i8* %temp73$1 to %__list*
  %temp75$3 = bitcast %__list* %__env to %__list*
  %temp76$4 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 1
  store %__list* %temp75$3, %__list** %temp76$4
  %temp74$5 = bitcast %__list* %temp75$3 to %__list*
  %temp80$6 = bitcast i32 %x to i32
  %temp78$7 = bitcast i32 %temp80$6 to i32
  %temp79$8 = getelementptr %__list, %__list* %__ctemp5$2, i32 0, i32 0
  store i32 %temp78$7, i32* %temp79$8
  %temp77$9 = bitcast i32 %temp78$7 to i32
  %__env$10 = bitcast %__list* %__ctemp5$2 to %__list*
  %temp81$11 = bitcast %__list* %__env$10 to %__list*
  %temp83$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp84$13 = bitcast i32 0 to i32
  %temp85$14 = bitcast %__list* %__env$10 to %__list*
  %temp82$15 = call i32 %temp83$12(i32 %temp84$13, %__list* %temp85$14)
  %__ctemp6$16 = bitcast i32 %temp82$15 to i32
  %temp87$17 = bitcast i32 %__ctemp6$16 to i32
  %temp88$18 = bitcast i32 2 to i32
  %temp86$19 = add i32 %temp87$17, %temp88$18
  ret i32 %temp86$19
}

define i32 @f0__body(i32 %x, %__list* %__env) {
f0__body__entry:
  %temp89$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp89$1 to %__list*
  %temp91$3 = bitcast %__list* %__env to %__list*
  %temp92$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp91$3, %__list** %temp92$4
  %temp90$5 = bitcast %__list* %temp91$3 to %__list*
  %temp96$6 = bitcast i32 %x to i32
  %temp94$7 = bitcast i32 %temp96$6 to i32
  %temp95$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp94$7, i32* %temp95$8
  %temp93$9 = bitcast i32 %temp94$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp97$11 = bitcast %__list* %__env$10 to %__list*
  %temp99$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp100$13 = bitcast i32 0 to i32
  %temp101$14 = bitcast %__list* %__env$10 to %__list*
  %temp98$15 = call i32 %temp99$12(i32 %temp100$13, %__list* %temp101$14)
  %__ctemp2$16 = bitcast i32 %temp98$15 to i32
  %temp103$17 = bitcast i32 %__ctemp2$16 to i32
  %temp104$18 = bitcast i32 1 to i32
  %temp102$19 = add i32 %temp103$17, %temp104$18
  ret i32 %temp102$19
}

define i32 @main() {
main__entry:
  %temp105$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp105$1 to %__list*
  %temp106$3 = call i8* @malloc(i32 8)
  %f0_clos$4 = bitcast i8* %temp106$3 to %__clos*
  %temp108$5 = bitcast %__list* %__env$2 to %__list*
  %temp109$6 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 0
  store %__list* %temp108$5, %__list** %temp109$6
  %temp107$7 = bitcast %__list* %temp108$5 to %__list*
  %temp113$8 = bitcast i32 (i32, %__list*)* @f0__body to i32 (i32, %__list*)*
  %temp111$9 = bitcast i32 (i32, %__list*)* %temp113$8 to i32 ()*
  %temp112$10 = getelementptr %__clos, %__clos* %f0_clos$4, i32 0, i32 1
  store i32 ()* %temp111$9, i32 ()** %temp112$10
  %temp110$11 = bitcast i32 ()* %temp111$9 to i32 ()*
  %temp114$12 = call i8* @malloc(i32 8)
  %__ctemp3$13 = bitcast i8* %temp114$12 to %__list*
  %temp116$14 = bitcast %__list* %__env$2 to %__list*
  %temp117$15 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 1
  store %__list* %temp116$14, %__list** %temp117$15
  %temp115$16 = bitcast %__list* %temp116$14 to %__list*
  %temp121$17 = bitcast %__clos* %f0_clos$4 to %__clos*
  %temp119$18 = ptrtoint %__clos* %temp121$17 to i32
  %temp120$19 = getelementptr %__list, %__list* %__ctemp3$13, i32 0, i32 0
  store i32 %temp119$18, i32* %temp120$19
  %temp118$20 = bitcast i32 %temp119$18 to i32
  %__env$21 = bitcast %__list* %__ctemp3$13 to %__list*
  %temp122$22 = bitcast %__list* %__env$21 to %__list*
  %temp123$23 = call i8* @malloc(i32 8)
  %f4_clos$24 = bitcast i8* %temp123$23 to %__clos*
  %temp125$25 = bitcast %__list* %__env$21 to %__list*
  %temp126$26 = getelementptr %__clos, %__clos* %f4_clos$24, i32 0, i32 0
  store %__list* %temp125$25, %__list** %temp126$26
  %temp124$27 = bitcast %__list* %temp125$25 to %__list*
  %temp130$28 = bitcast i32 (i32, %__list*)* @f4__body to i32 (i32, %__list*)*
  %temp128$29 = bitcast i32 (i32, %__list*)* %temp130$28 to i32 ()*
  %temp129$30 = getelementptr %__clos, %__clos* %f4_clos$24, i32 0, i32 1
  store i32 ()* %temp128$29, i32 ()** %temp129$30
  %temp127$31 = bitcast i32 ()* %temp128$29 to i32 ()*
  %temp131$32 = call i8* @malloc(i32 8)
  %__ctemp7$33 = bitcast i8* %temp131$32 to %__list*
  %temp133$34 = bitcast %__list* %__env$21 to %__list*
  %temp134$35 = getelementptr %__list, %__list* %__ctemp7$33, i32 0, i32 1
  store %__list* %temp133$34, %__list** %temp134$35
  %temp132$36 = bitcast %__list* %temp133$34 to %__list*
  %temp138$37 = bitcast %__clos* %f4_clos$24 to %__clos*
  %temp136$38 = ptrtoint %__clos* %temp138$37 to i32
  %temp137$39 = getelementptr %__list, %__list* %__ctemp7$33, i32 0, i32 0
  store i32 %temp136$38, i32* %temp137$39
  %temp135$40 = bitcast i32 %temp136$38 to i32
  %__env$41 = bitcast %__list* %__ctemp7$33 to %__list*
  %temp139$42 = bitcast %__list* %__env$41 to %__list*
  %temp140$43 = call i8* @malloc(i32 8)
  %f8_clos$44 = bitcast i8* %temp140$43 to %__clos*
  %temp142$45 = bitcast %__list* %__env$41 to %__list*
  %temp143$46 = getelementptr %__clos, %__clos* %f8_clos$44, i32 0, i32 0
  store %__list* %temp142$45, %__list** %temp143$46
  %temp141$47 = bitcast %__list* %temp142$45 to %__list*
  %temp147$48 = bitcast i32 (i32, %__list*)* @f8__body to i32 (i32, %__list*)*
  %temp145$49 = bitcast i32 (i32, %__list*)* %temp147$48 to i32 ()*
  %temp146$50 = getelementptr %__clos, %__clos* %f8_clos$44, i32 0, i32 1
  store i32 ()* %temp145$49, i32 ()** %temp146$50
  %temp144$51 = bitcast i32 ()* %temp145$49 to i32 ()*
  %temp148$52 = call i8* @malloc(i32 8)
  %__ctemp11$53 = bitcast i8* %temp148$52 to %__list*
  %temp150$54 = bitcast %__list* %__env$41 to %__list*
  %temp151$55 = getelementptr %__list, %__list* %__ctemp11$53, i32 0, i32 1
  store %__list* %temp150$54, %__list** %temp151$55
  %temp149$56 = bitcast %__list* %temp150$54 to %__list*
  %temp155$57 = bitcast %__clos* %f8_clos$44 to %__clos*
  %temp153$58 = ptrtoint %__clos* %temp155$57 to i32
  %temp154$59 = getelementptr %__list, %__list* %__ctemp11$53, i32 0, i32 0
  store i32 %temp153$58, i32* %temp154$59
  %temp152$60 = bitcast i32 %temp153$58 to i32
  %__env$61 = bitcast %__list* %__ctemp11$53 to %__list*
  %temp156$62 = bitcast %__list* %__env$61 to %__list*
  %temp157$63 = call i8* @malloc(i32 8)
  %f_this12_clos$64 = bitcast i8* %temp157$63 to %__clos*
  %temp159$65 = bitcast %__list* %__env$61 to %__list*
  %temp160$66 = getelementptr %__clos, %__clos* %f_this12_clos$64, i32 0, i32 0
  store %__list* %temp159$65, %__list** %temp160$66
  %temp158$67 = bitcast %__list* %temp159$65 to %__list*
  %temp164$68 = bitcast %__clos* (%__clos*, %__list*)* @f_this12__body to %__clos* (%__clos*, %__list*)*
  %temp162$69 = bitcast %__clos* (%__clos*, %__list*)* %temp164$68 to i32 ()*
  %temp163$70 = getelementptr %__clos, %__clos* %f_this12_clos$64, i32 0, i32 1
  store i32 ()* %temp162$69, i32 ()** %temp163$70
  %temp161$71 = bitcast i32 ()* %temp162$69 to i32 ()*
  %temp165$72 = call i8* @malloc(i32 8)
  %__ctemp18$73 = bitcast i8* %temp165$72 to %__list*
  %temp167$74 = bitcast %__list* %__env$61 to %__list*
  %temp168$75 = getelementptr %__list, %__list* %__ctemp18$73, i32 0, i32 1
  store %__list* %temp167$74, %__list** %temp168$75
  %temp166$76 = bitcast %__list* %temp167$74 to %__list*
  %temp172$77 = bitcast %__clos* %f_this12_clos$64 to %__clos*
  %temp170$78 = ptrtoint %__clos* %temp172$77 to i32
  %temp171$79 = getelementptr %__list, %__list* %__ctemp18$73, i32 0, i32 0
  store i32 %temp170$78, i32* %temp171$79
  %temp169$80 = bitcast i32 %temp170$78 to i32
  %__env$81 = bitcast %__list* %__ctemp18$73 to %__list*
  %temp173$82 = bitcast %__list* %__env$81 to %__list*
  %temp175$83 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp176$84 = bitcast i32 0 to i32
  %temp177$85 = bitcast %__list* %__env$81 to %__list*
  %temp174$86 = call i32 %temp175$83(i32 %temp176$84, %__list* %temp177$85)
  %__ctemp19$87 = inttoptr i32 %temp174$86 to %__clos*
  %temp179$88 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp180$89 = bitcast i32 1 to i32
  %temp181$90 = bitcast %__list* %__env$81 to %__list*
  %temp178$91 = call i32 %temp179$88(i32 %temp180$89, %__list* %temp181$90)
  %__ctemp20$92 = inttoptr i32 %temp178$91 to %__clos*
  %temp192$93 = bitcast %__clos* %__ctemp19$87 to %__clos*
  %temp193$94 = getelementptr %__clos, %__clos* %temp192$93, i32 0, i32 1
  %temp191$95 = load i32 ()*, i32 ()** %temp193$94
  %temp188$96 = bitcast i32 ()* %temp191$95 to %__clos* (%__clos*, %__list*)*
  %temp189$97 = bitcast %__clos* %__ctemp20$92 to %__clos*
  %temp194$98 = bitcast %__clos* %__ctemp19$87 to %__clos*
  %temp195$99 = getelementptr %__clos, %__clos* %temp194$98, i32 0, i32 0
  %temp190$100 = load %__list*, %__list** %temp195$99
  %temp186$101 = call %__clos* %temp188$96(%__clos* %temp189$97, %__list* %temp190$100)
  %temp187$102 = getelementptr %__clos, %__clos* %temp186$101, i32 0, i32 1
  %temp185$103 = load i32 ()*, i32 ()** %temp187$102
  %temp182$104 = bitcast i32 ()* %temp185$103 to i32 (i32, %__list*)*
  %temp183$105 = bitcast i32 39 to i32
  %temp202$106 = bitcast %__clos* %__ctemp19$87 to %__clos*
  %temp203$107 = getelementptr %__clos, %__clos* %temp202$106, i32 0, i32 1
  %temp201$108 = load i32 ()*, i32 ()** %temp203$107
  %temp198$109 = bitcast i32 ()* %temp201$108 to %__clos* (%__clos*, %__list*)*
  %temp199$110 = bitcast %__clos* %__ctemp20$92 to %__clos*
  %temp204$111 = bitcast %__clos* %__ctemp19$87 to %__clos*
  %temp205$112 = getelementptr %__clos, %__clos* %temp204$111, i32 0, i32 0
  %temp200$113 = load %__list*, %__list** %temp205$112
  %temp196$114 = call %__clos* %temp198$109(%__clos* %temp199$110, %__list* %temp200$113)
  %temp197$115 = getelementptr %__clos, %__clos* %temp196$114, i32 0, i32 0
  %temp184$116 = load %__list*, %__list** %temp197$115
  %__ctemp21$117 = call i32 %temp182$104(i32 %temp183$105, %__list* %temp184$116)
  %temp207$118 = bitcast %__list* %__env$81 to %__list*
  %temp208$119 = getelementptr %__list, %__list* %temp207$118, i32 0, i32 1
  %__env$120 = load %__list*, %__list** %temp208$119
  %temp206$121 = bitcast %__list* %__env$120 to %__list*
  %__ctemp22$122 = bitcast i32 %__ctemp21$117 to i32
  %temp210$123 = bitcast %__list* %__env$120 to %__list*
  %temp211$124 = getelementptr %__list, %__list* %temp210$123, i32 0, i32 1
  %__env$125 = load %__list*, %__list** %temp211$124
  %temp209$126 = bitcast %__list* %__env$125 to %__list*
  %__ctemp23$127 = bitcast i32 %__ctemp22$122 to i32
  %temp213$128 = bitcast %__list* %__env$125 to %__list*
  %temp214$129 = getelementptr %__list, %__list* %temp213$128, i32 0, i32 1
  %__env$130 = load %__list*, %__list** %temp214$129
  %temp212$131 = bitcast %__list* %__env$130 to %__list*
  %__ctemp24$132 = bitcast i32 %__ctemp23$127 to i32
  %temp216$133 = bitcast %__list* %__env$130 to %__list*
  %temp217$134 = getelementptr %__list, %__list* %temp216$133, i32 0, i32 1
  %__env$135 = load %__list*, %__list** %temp217$134
  %temp215$136 = bitcast %__list* %__env$135 to %__list*
  %temp218$137 = bitcast i32 %__ctemp24$132 to i32
  ret i32 %temp218$137
}
