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

define i32 @__fun14__body(i32 %y, %__list* %__env) {
__fun14__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp15$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp15$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %y to i32
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
  %__ctemp16$16 = bitcast i32 %temp22$15 to i32
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 0 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp17$21 = bitcast i32 %temp26$20 to i32
  %temp31$22 = bitcast i32 %__ctemp16$16 to i32
  %temp32$23 = bitcast i32 %__ctemp17$21 to i32
  %temp30$24 = add i32 %temp31$22, %temp32$23
  ret i32 %temp30$24
}

define %__clos* @__fun12__body(i32 %x, %__list* %__env) {
__fun12__body__entry:
  %temp33$1 = call i8* @malloc(i32 8)
  %__ctemp13$2 = bitcast i8* %temp33$1 to %__list*
  %temp35$3 = bitcast %__list* %__env to %__list*
  %temp36$4 = getelementptr %__list, %__list* %__ctemp13$2, i32 0, i32 1
  store %__list* %temp35$3, %__list** %temp36$4
  %temp34$5 = bitcast %__list* %temp35$3 to %__list*
  %temp40$6 = bitcast i32 %x to i32
  %temp38$7 = bitcast i32 %temp40$6 to i32
  %temp39$8 = getelementptr %__list, %__list* %__ctemp13$2, i32 0, i32 0
  store i32 %temp38$7, i32* %temp39$8
  %temp37$9 = bitcast i32 %temp38$7 to i32
  %__env$10 = bitcast %__list* %__ctemp13$2 to %__list*
  %temp41$11 = bitcast %__list* %__env$10 to %__list*
  %temp42$12 = call i8* @malloc(i32 8)
  %__fun14_clos$13 = bitcast i8* %temp42$12 to %__clos*
  %temp44$14 = bitcast %__list* %__env$10 to %__list*
  %temp45$15 = getelementptr %__clos, %__clos* %__fun14_clos$13, i32 0, i32 0
  store %__list* %temp44$14, %__list** %temp45$15
  %temp43$16 = bitcast %__list* %temp44$14 to %__list*
  %temp49$17 = bitcast i32 (i32, %__list*)* @__fun14__body to i32 (i32, %__list*)*
  %temp47$18 = bitcast i32 (i32, %__list*)* %temp49$17 to i32 ()*
  %temp48$19 = getelementptr %__clos, %__clos* %__fun14_clos$13, i32 0, i32 1
  store i32 ()* %temp47$18, i32 ()** %temp48$19
  %temp46$20 = bitcast i32 ()* %temp47$18 to i32 ()*
  %temp50$21 = bitcast %__clos* %__fun14_clos$13 to %__clos*
  ret %__clos* %temp50$21
}

define i32 @__fun2__body(%__pair* %xy, %__list* %__env) {
__fun2__body__entry:
  %temp51$1 = call i8* @malloc(i32 8)
  %__ctemp3$2 = bitcast i8* %temp51$1 to %__list*
  %temp53$3 = bitcast %__list* %__env to %__list*
  %temp54$4 = getelementptr %__list, %__list* %__ctemp3$2, i32 0, i32 1
  store %__list* %temp53$3, %__list** %temp54$4
  %temp52$5 = bitcast %__list* %temp53$3 to %__list*
  %temp58$6 = bitcast %__pair* %xy to %__pair*
  %temp56$7 = ptrtoint %__pair* %temp58$6 to i32
  %temp57$8 = getelementptr %__list, %__list* %__ctemp3$2, i32 0, i32 0
  store i32 %temp56$7, i32* %temp57$8
  %temp55$9 = bitcast i32 %temp56$7 to i32
  %__env$10 = bitcast %__list* %__ctemp3$2 to %__list*
  %temp59$11 = bitcast %__list* %__env$10 to %__list*
  %temp61$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp62$13 = bitcast i32 0 to i32
  %temp63$14 = bitcast %__list* %__env$10 to %__list*
  %temp60$15 = call i32 %temp61$12(i32 %temp62$13, %__list* %temp63$14)
  %__ctemp4$16 = inttoptr i32 %temp60$15 to %__pair*
  %temp64$17 = call i8* @malloc(i32 8)
  %__ctemp5$18 = bitcast i8* %temp64$17 to %__list*
  %temp66$19 = bitcast %__list* %__env$10 to %__list*
  %temp67$20 = getelementptr %__list, %__list* %__ctemp5$18, i32 0, i32 1
  store %__list* %temp66$19, %__list** %temp67$20
  %temp65$21 = bitcast %__list* %temp66$19 to %__list*
  %temp72$22 = bitcast %__pair* %__ctemp4$16 to %__pair*
  %temp73$23 = getelementptr %__pair, %__pair* %temp72$22, i32 0, i32 0
  %temp71$24 = load i32, i32* %temp73$23
  %temp69$25 = bitcast i32 %temp71$24 to i32
  %temp70$26 = getelementptr %__list, %__list* %__ctemp5$18, i32 0, i32 0
  store i32 %temp69$25, i32* %temp70$26
  %temp68$27 = bitcast i32 %temp69$25 to i32
  %__env$28 = bitcast %__list* %__ctemp5$18 to %__list*
  %temp74$29 = bitcast %__list* %__env$28 to %__list*
  %temp75$30 = call i8* @malloc(i32 8)
  %__ctemp6$31 = bitcast i8* %temp75$30 to %__list*
  %temp77$32 = bitcast %__list* %__env$28 to %__list*
  %temp78$33 = getelementptr %__list, %__list* %__ctemp6$31, i32 0, i32 1
  store %__list* %temp77$32, %__list** %temp78$33
  %temp76$34 = bitcast %__list* %temp77$32 to %__list*
  %temp83$35 = bitcast %__pair* %__ctemp4$16 to %__pair*
  %temp84$36 = getelementptr %__pair, %__pair* %temp83$35, i32 0, i32 1
  %temp82$37 = load i32, i32* %temp84$36
  %temp80$38 = bitcast i32 %temp82$37 to i32
  %temp81$39 = getelementptr %__list, %__list* %__ctemp6$31, i32 0, i32 0
  store i32 %temp80$38, i32* %temp81$39
  %temp79$40 = bitcast i32 %temp80$38 to i32
  %__env$41 = bitcast %__list* %__ctemp6$31 to %__list*
  %temp85$42 = bitcast %__list* %__env$41 to %__list*
  %temp87$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp88$44 = bitcast i32 3 to i32
  %temp89$45 = bitcast %__list* %__env$41 to %__list*
  %temp86$46 = call i32 %temp87$43(i32 %temp88$44, %__list* %temp89$45)
  %__ctemp7$47 = inttoptr i32 %temp86$46 to %__clos*
  %temp91$48 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp92$49 = bitcast i32 1 to i32
  %temp93$50 = bitcast %__list* %__env$41 to %__list*
  %temp90$51 = call i32 %temp91$48(i32 %temp92$49, %__list* %temp93$50)
  %__ctemp8$52 = bitcast i32 %temp90$51 to i32
  %temp95$53 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp96$54 = bitcast i32 0 to i32
  %temp97$55 = bitcast %__list* %__env$41 to %__list*
  %temp94$56 = call i32 %temp95$53(i32 %temp96$54, %__list* %temp97$55)
  %__ctemp9$57 = bitcast i32 %temp94$56 to i32
  %temp108$58 = bitcast %__clos* %__ctemp7$47 to %__clos*
  %temp109$59 = getelementptr %__clos, %__clos* %temp108$58, i32 0, i32 1
  %temp107$60 = load i32 ()*, i32 ()** %temp109$59
  %temp104$61 = bitcast i32 ()* %temp107$60 to %__clos* (i32, %__list*)*
  %temp105$62 = bitcast i32 %__ctemp8$52 to i32
  %temp110$63 = bitcast %__clos* %__ctemp7$47 to %__clos*
  %temp111$64 = getelementptr %__clos, %__clos* %temp110$63, i32 0, i32 0
  %temp106$65 = load %__list*, %__list** %temp111$64
  %temp102$66 = call %__clos* %temp104$61(i32 %temp105$62, %__list* %temp106$65)
  %temp103$67 = getelementptr %__clos, %__clos* %temp102$66, i32 0, i32 1
  %temp101$68 = load i32 ()*, i32 ()** %temp103$67
  %temp98$69 = bitcast i32 ()* %temp101$68 to i32 (i32, %__list*)*
  %temp99$70 = bitcast i32 %__ctemp9$57 to i32
  %temp118$71 = bitcast %__clos* %__ctemp7$47 to %__clos*
  %temp119$72 = getelementptr %__clos, %__clos* %temp118$71, i32 0, i32 1
  %temp117$73 = load i32 ()*, i32 ()** %temp119$72
  %temp114$74 = bitcast i32 ()* %temp117$73 to %__clos* (i32, %__list*)*
  %temp115$75 = bitcast i32 %__ctemp8$52 to i32
  %temp120$76 = bitcast %__clos* %__ctemp7$47 to %__clos*
  %temp121$77 = getelementptr %__clos, %__clos* %temp120$76, i32 0, i32 0
  %temp116$78 = load %__list*, %__list** %temp121$77
  %temp112$79 = call %__clos* %temp114$74(i32 %temp115$75, %__list* %temp116$78)
  %temp113$80 = getelementptr %__clos, %__clos* %temp112$79, i32 0, i32 0
  %temp100$81 = load %__list*, %__list** %temp113$80
  %__ctemp10$82 = call i32 %temp98$69(i32 %temp99$70, %__list* %temp100$81)
  %temp123$83 = bitcast %__list* %__env$41 to %__list*
  %temp124$84 = getelementptr %__list, %__list* %temp123$83, i32 0, i32 1
  %__env$85 = load %__list*, %__list** %temp124$84
  %temp122$86 = bitcast %__list* %__env$85 to %__list*
  %temp126$87 = bitcast %__list* %__env$85 to %__list*
  %temp127$88 = getelementptr %__list, %__list* %temp126$87, i32 0, i32 1
  %__env$89 = load %__list*, %__list** %temp127$88
  %temp125$90 = bitcast %__list* %__env$89 to %__list*
  %temp128$91 = bitcast i32 %__ctemp10$82 to i32
  ret i32 %temp128$91
}

define %__clos* @uncurry0__body(%__clos* %f, %__list* %__env) {
uncurry0__body__entry:
  %temp129$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp129$1 to %__list*
  %temp131$3 = bitcast %__list* %__env to %__list*
  %temp132$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp131$3, %__list** %temp132$4
  %temp130$5 = bitcast %__list* %temp131$3 to %__list*
  %temp136$6 = bitcast %__clos* %f to %__clos*
  %temp134$7 = ptrtoint %__clos* %temp136$6 to i32
  %temp135$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp134$7, i32* %temp135$8
  %temp133$9 = bitcast i32 %temp134$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp137$11 = bitcast %__list* %__env$10 to %__list*
  %temp138$12 = call i8* @malloc(i32 8)
  %__fun2_clos$13 = bitcast i8* %temp138$12 to %__clos*
  %temp140$14 = bitcast %__list* %__env$10 to %__list*
  %temp141$15 = getelementptr %__clos, %__clos* %__fun2_clos$13, i32 0, i32 0
  store %__list* %temp140$14, %__list** %temp141$15
  %temp139$16 = bitcast %__list* %temp140$14 to %__list*
  %temp145$17 = bitcast i32 (%__pair*, %__list*)* @__fun2__body to i32 (%__pair*, %__list*)*
  %temp143$18 = bitcast i32 (%__pair*, %__list*)* %temp145$17 to i32 ()*
  %temp144$19 = getelementptr %__clos, %__clos* %__fun2_clos$13, i32 0, i32 1
  store i32 ()* %temp143$18, i32 ()** %temp144$19
  %temp142$20 = bitcast i32 ()* %temp143$18 to i32 ()*
  %temp146$21 = bitcast %__clos* %__fun2_clos$13 to %__clos*
  ret %__clos* %temp146$21
}

define i32 @main() {
main__entry:
  %temp147$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp147$1 to %__list*
  %temp148$3 = call i8* @malloc(i32 8)
  %uncurry0_clos$4 = bitcast i8* %temp148$3 to %__clos*
  %temp150$5 = bitcast %__list* %__env$2 to %__list*
  %temp151$6 = getelementptr %__clos, %__clos* %uncurry0_clos$4, i32 0, i32 0
  store %__list* %temp150$5, %__list** %temp151$6
  %temp149$7 = bitcast %__list* %temp150$5 to %__list*
  %temp155$8 = bitcast %__clos* (%__clos*, %__list*)* @uncurry0__body to %__clos* (%__clos*, %__list*)*
  %temp153$9 = bitcast %__clos* (%__clos*, %__list*)* %temp155$8 to i32 ()*
  %temp154$10 = getelementptr %__clos, %__clos* %uncurry0_clos$4, i32 0, i32 1
  store i32 ()* %temp153$9, i32 ()** %temp154$10
  %temp152$11 = bitcast i32 ()* %temp153$9 to i32 ()*
  %temp156$12 = call i8* @malloc(i32 8)
  %__ctemp11$13 = bitcast i8* %temp156$12 to %__list*
  %temp158$14 = bitcast %__list* %__env$2 to %__list*
  %temp159$15 = getelementptr %__list, %__list* %__ctemp11$13, i32 0, i32 1
  store %__list* %temp158$14, %__list** %temp159$15
  %temp157$16 = bitcast %__list* %temp158$14 to %__list*
  %temp163$17 = bitcast %__clos* %uncurry0_clos$4 to %__clos*
  %temp161$18 = ptrtoint %__clos* %temp163$17 to i32
  %temp162$19 = getelementptr %__list, %__list* %__ctemp11$13, i32 0, i32 0
  store i32 %temp161$18, i32* %temp162$19
  %temp160$20 = bitcast i32 %temp161$18 to i32
  %__env$21 = bitcast %__list* %__ctemp11$13 to %__list*
  %temp164$22 = bitcast %__list* %__env$21 to %__list*
  %temp165$23 = call i8* @malloc(i32 8)
  %__fun12_clos$24 = bitcast i8* %temp165$23 to %__clos*
  %temp167$25 = bitcast %__list* %__env$21 to %__list*
  %temp168$26 = getelementptr %__clos, %__clos* %__fun12_clos$24, i32 0, i32 0
  store %__list* %temp167$25, %__list** %temp168$26
  %temp166$27 = bitcast %__list* %temp167$25 to %__list*
  %temp172$28 = bitcast %__clos* (i32, %__list*)* @__fun12__body to %__clos* (i32, %__list*)*
  %temp170$29 = bitcast %__clos* (i32, %__list*)* %temp172$28 to i32 ()*
  %temp171$30 = getelementptr %__clos, %__clos* %__fun12_clos$24, i32 0, i32 1
  store i32 ()* %temp170$29, i32 ()** %temp171$30
  %temp169$31 = bitcast i32 ()* %temp170$29 to i32 ()*
  %temp173$32 = call i8* @malloc(i32 8)
  %__ctemp18$33 = bitcast i8* %temp173$32 to %__list*
  %temp175$34 = bitcast %__list* %__env$21 to %__list*
  %temp176$35 = getelementptr %__list, %__list* %__ctemp18$33, i32 0, i32 1
  store %__list* %temp175$34, %__list** %temp176$35
  %temp174$36 = bitcast %__list* %temp175$34 to %__list*
  %temp180$37 = bitcast %__clos* %__fun12_clos$24 to %__clos*
  %temp178$38 = ptrtoint %__clos* %temp180$37 to i32
  %temp179$39 = getelementptr %__list, %__list* %__ctemp18$33, i32 0, i32 0
  store i32 %temp178$38, i32* %temp179$39
  %temp177$40 = bitcast i32 %temp178$38 to i32
  %__env$41 = bitcast %__list* %__ctemp18$33 to %__list*
  %temp181$42 = bitcast %__list* %__env$41 to %__list*
  %temp183$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp184$44 = bitcast i32 1 to i32
  %temp185$45 = bitcast %__list* %__env$41 to %__list*
  %temp182$46 = call i32 %temp183$43(i32 %temp184$44, %__list* %temp185$45)
  %__ctemp19$47 = inttoptr i32 %temp182$46 to %__clos*
  %temp187$48 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp188$49 = bitcast i32 0 to i32
  %temp189$50 = bitcast %__list* %__env$41 to %__list*
  %temp186$51 = call i32 %temp187$48(i32 %temp188$49, %__list* %temp189$50)
  %__ctemp20$52 = inttoptr i32 %temp186$51 to %__clos*
  %temp190$53 = call i8* @malloc(i32 8)
  %__ctemp21$54 = bitcast i8* %temp190$53 to %__pair*
  %temp194$55 = bitcast i32 5 to i32
  %temp192$56 = bitcast i32 %temp194$55 to i32
  %temp193$57 = getelementptr %__pair, %__pair* %__ctemp21$54, i32 0, i32 0
  store i32 %temp192$56, i32* %temp193$57
  %temp191$58 = bitcast i32 %temp192$56 to i32
  %temp198$59 = bitcast i32 3 to i32
  %temp196$60 = bitcast i32 %temp198$59 to i32
  %temp197$61 = getelementptr %__pair, %__pair* %__ctemp21$54, i32 0, i32 1
  store i32 %temp196$60, i32* %temp197$61
  %temp195$62 = bitcast i32 %temp196$60 to i32
  %temp209$63 = bitcast %__clos* %__ctemp19$47 to %__clos*
  %temp210$64 = getelementptr %__clos, %__clos* %temp209$63, i32 0, i32 1
  %temp208$65 = load i32 ()*, i32 ()** %temp210$64
  %temp205$66 = bitcast i32 ()* %temp208$65 to %__clos* (%__clos*, %__list*)*
  %temp206$67 = bitcast %__clos* %__ctemp20$52 to %__clos*
  %temp211$68 = bitcast %__clos* %__ctemp19$47 to %__clos*
  %temp212$69 = getelementptr %__clos, %__clos* %temp211$68, i32 0, i32 0
  %temp207$70 = load %__list*, %__list** %temp212$69
  %temp203$71 = call %__clos* %temp205$66(%__clos* %temp206$67, %__list* %temp207$70)
  %temp204$72 = getelementptr %__clos, %__clos* %temp203$71, i32 0, i32 1
  %temp202$73 = load i32 ()*, i32 ()** %temp204$72
  %temp199$74 = bitcast i32 ()* %temp202$73 to i32 (%__pair*, %__list*)*
  %temp200$75 = bitcast %__pair* %__ctemp21$54 to %__pair*
  %temp219$76 = bitcast %__clos* %__ctemp19$47 to %__clos*
  %temp220$77 = getelementptr %__clos, %__clos* %temp219$76, i32 0, i32 1
  %temp218$78 = load i32 ()*, i32 ()** %temp220$77
  %temp215$79 = bitcast i32 ()* %temp218$78 to %__clos* (%__clos*, %__list*)*
  %temp216$80 = bitcast %__clos* %__ctemp20$52 to %__clos*
  %temp221$81 = bitcast %__clos* %__ctemp19$47 to %__clos*
  %temp222$82 = getelementptr %__clos, %__clos* %temp221$81, i32 0, i32 0
  %temp217$83 = load %__list*, %__list** %temp222$82
  %temp213$84 = call %__clos* %temp215$79(%__clos* %temp216$80, %__list* %temp217$83)
  %temp214$85 = getelementptr %__clos, %__clos* %temp213$84, i32 0, i32 0
  %temp201$86 = load %__list*, %__list** %temp214$85
  %__ctemp22$87 = call i32 %temp199$74(%__pair* %temp200$75, %__list* %temp201$86)
  %temp224$88 = bitcast %__list* %__env$41 to %__list*
  %temp225$89 = getelementptr %__list, %__list* %temp224$88, i32 0, i32 1
  %__env$90 = load %__list*, %__list** %temp225$89
  %temp223$91 = bitcast %__list* %__env$90 to %__list*
  %__ctemp23$92 = bitcast i32 %__ctemp22$87 to i32
  %temp227$93 = bitcast %__list* %__env$90 to %__list*
  %temp228$94 = getelementptr %__list, %__list* %temp227$93, i32 0, i32 1
  %__env$95 = load %__list*, %__list** %temp228$94
  %temp226$96 = bitcast %__list* %__env$95 to %__list*
  %temp229$97 = bitcast i32 %__ctemp23$92 to i32
  ret i32 %temp229$97
}
