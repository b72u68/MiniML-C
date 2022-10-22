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

define i32 @hd0__body(%__list* %l, %__list* %__env) {
hd0__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast %__list* %l to %__list*
  %temp18$7 = ptrtoint %__list* %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 0 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp2$16 = inttoptr i32 %temp22$15 to %__list*
  %temp63$17 = bitcast %__list* %__ctemp2$16 to %__list*
  %temp61$18 = ptrtoint %__list* %temp63$17 to i32
  %temp62$19 = bitcast i32 0 to i32
  %temp60$20 = icmp eq i32 %temp61$18, %temp62$19
  br i1 %temp60$20, label %label5, label %label6
label5:
  %__ctemp3$102 = bitcast i32 0 to i32
  %temp26$103 = bitcast i32 %__ctemp3$102 to i32
  br label %label7
label6:
  %temp27$61 = call i8* @malloc(i32 8)
  %__ctemp4$62 = bitcast i8* %temp27$61 to %__list*
  %temp29$63 = bitcast %__list* %__env$10 to %__list*
  %temp30$64 = getelementptr %__list, %__list* %__ctemp4$62, i32 0, i32 1
  store %__list* %temp29$63, %__list** %temp30$64
  %temp28$65 = bitcast %__list* %temp29$63 to %__list*
  %temp35$66 = bitcast %__list* %__ctemp2$16 to %__list*
  %temp36$67 = getelementptr %__list, %__list* %temp35$66, i32 0, i32 0
  %temp34$68 = load i32, i32* %temp36$67
  %temp32$69 = bitcast i32 %temp34$68 to i32
  %temp33$70 = getelementptr %__list, %__list* %__ctemp4$62, i32 0, i32 0
  store i32 %temp32$69, i32* %temp33$70
  %temp31$71 = bitcast i32 %temp32$69 to i32
  %__env$72 = bitcast %__list* %__ctemp4$62 to %__list*
  %temp37$73 = bitcast %__list* %__env$72 to %__list*
  %temp38$74 = call i8* @malloc(i32 8)
  %__ctemp5$75 = bitcast i8* %temp38$74 to %__list*
  %temp40$76 = bitcast %__list* %__env$72 to %__list*
  %temp41$77 = getelementptr %__list, %__list* %__ctemp5$75, i32 0, i32 1
  store %__list* %temp40$76, %__list** %temp41$77
  %temp39$78 = bitcast %__list* %temp40$76 to %__list*
  %temp46$79 = bitcast %__list* %__ctemp2$16 to %__list*
  %temp47$80 = getelementptr %__list, %__list* %temp46$79, i32 0, i32 1
  %temp45$81 = load %__list*, %__list** %temp47$80
  %temp43$82 = ptrtoint %__list* %temp45$81 to i32
  %temp44$83 = getelementptr %__list, %__list* %__ctemp5$75, i32 0, i32 0
  store i32 %temp43$82, i32* %temp44$83
  %temp42$84 = bitcast i32 %temp43$82 to i32
  %__env$85 = bitcast %__list* %__ctemp5$75 to %__list*
  %temp48$86 = bitcast %__list* %__env$85 to %__list*
  %temp50$87 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp51$88 = bitcast i32 1 to i32
  %temp52$89 = bitcast %__list* %__env$85 to %__list*
  %temp49$90 = call i32 %temp50$87(i32 %temp51$88, %__list* %temp52$89)
  %__ctemp6$91 = bitcast i32 %temp49$90 to i32
  %__ctemp3$92 = bitcast i32 %__ctemp6$91 to i32
  %temp53$93 = bitcast i32 %__ctemp3$92 to i32
  %temp55$94 = bitcast %__list* %__env$85 to %__list*
  %temp56$95 = getelementptr %__list, %__list* %temp55$94, i32 0, i32 1
  %__env$96 = load %__list*, %__list** %temp56$95
  %temp54$97 = bitcast %__list* %__env$96 to %__list*
  %temp58$98 = bitcast %__list* %__env$96 to %__list*
  %temp59$99 = getelementptr %__list, %__list* %temp58$98, i32 0, i32 1
  %__env$100 = load %__list*, %__list** %temp59$99
  %temp57$101 = bitcast %__list* %__env$100 to %__list*
  br label %label7
label7:
  %temp59$21 = phi %__list** [null, %label5], [%temp59$99, %label6]
  %temp58$22 = phi %__list* [null, %label5], [%temp58$98, %label6]
  %temp57$23 = phi %__list* [null, %label5], [%temp57$101, %label6]
  %temp56$24 = phi %__list** [null, %label5], [%temp56$95, %label6]
  %temp55$25 = phi %__list* [null, %label5], [%temp55$94, %label6]
  %temp54$26 = phi %__list* [null, %label5], [%temp54$97, %label6]
  %temp53$27 = phi i32 [0, %label5], [%temp53$93, %label6]
  %temp52$28 = phi %__list* [null, %label5], [%temp52$89, %label6]
  %temp51$29 = phi i32 [0, %label5], [%temp51$88, %label6]
  %temp50$30 = phi i32 (i32, %__list*)* [null, %label5], [%temp50$87, %label6]
  %temp49$31 = phi i32 [0, %label5], [%temp49$90, %label6]
  %temp48$32 = phi %__list* [null, %label5], [%temp48$86, %label6]
  %temp47$33 = phi %__list** [null, %label5], [%temp47$80, %label6]
  %temp46$34 = phi %__list* [null, %label5], [%temp46$79, %label6]
  %temp45$35 = phi %__list* [null, %label5], [%temp45$81, %label6]
  %temp44$36 = phi i32* [null, %label5], [%temp44$83, %label6]
  %temp43$37 = phi i32 [0, %label5], [%temp43$82, %label6]
  %temp42$38 = phi i32 [0, %label5], [%temp42$84, %label6]
  %temp41$39 = phi %__list** [null, %label5], [%temp41$77, %label6]
  %temp40$40 = phi %__list* [null, %label5], [%temp40$76, %label6]
  %temp39$41 = phi %__list* [null, %label5], [%temp39$78, %label6]
  %temp38$42 = phi i8* [null, %label5], [%temp38$74, %label6]
  %temp37$43 = phi %__list* [null, %label5], [%temp37$73, %label6]
  %temp36$44 = phi i32* [null, %label5], [%temp36$67, %label6]
  %temp35$45 = phi %__list* [null, %label5], [%temp35$66, %label6]
  %temp34$46 = phi i32 [0, %label5], [%temp34$68, %label6]
  %temp33$47 = phi i32* [null, %label5], [%temp33$70, %label6]
  %temp32$48 = phi i32 [0, %label5], [%temp32$69, %label6]
  %temp31$49 = phi i32 [0, %label5], [%temp31$71, %label6]
  %temp30$50 = phi %__list** [null, %label5], [%temp30$64, %label6]
  %temp29$51 = phi %__list* [null, %label5], [%temp29$63, %label6]
  %temp28$52 = phi %__list* [null, %label5], [%temp28$65, %label6]
  %temp27$53 = phi i8* [null, %label5], [%temp27$61, %label6]
  %temp26$54 = phi i32 [%temp26$103, %label5], [0, %label6]
  %__env$55 = phi %__list* [%__env$10, %label5], [%__env$100, %label6]
  %__ctemp6$56 = phi i32 [0, %label5], [%__ctemp6$91, %label6]
  %__ctemp5$57 = phi %__list* [null, %label5], [%__ctemp5$75, %label6]
  %__ctemp4$58 = phi %__list* [null, %label5], [%__ctemp4$62, %label6]
  %__ctemp3$59 = phi i32 [%__ctemp3$102, %label5], [%__ctemp3$92, %label6]
  %temp64$60 = bitcast i32 %__ctemp3$59 to i32
  ret i32 %temp64$60
}

define i32 @main() {
main__entry:
  %temp65$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp65$1 to %__list*
  %temp66$3 = call i8* @malloc(i32 8)
  %hd0_clos$4 = bitcast i8* %temp66$3 to %__clos*
  %temp68$5 = bitcast %__list* %__env$2 to %__list*
  %temp69$6 = getelementptr %__clos, %__clos* %hd0_clos$4, i32 0, i32 0
  store %__list* %temp68$5, %__list** %temp69$6
  %temp67$7 = bitcast %__list* %temp68$5 to %__list*
  %temp73$8 = bitcast i32 (%__list*, %__list*)* @hd0__body to i32 (%__list*, %__list*)*
  %temp71$9 = bitcast i32 (%__list*, %__list*)* %temp73$8 to i32 ()*
  %temp72$10 = getelementptr %__clos, %__clos* %hd0_clos$4, i32 0, i32 1
  store i32 ()* %temp71$9, i32 ()** %temp72$10
  %temp70$11 = bitcast i32 ()* %temp71$9 to i32 ()*
  %temp74$12 = call i8* @malloc(i32 8)
  %__ctemp7$13 = bitcast i8* %temp74$12 to %__list*
  %temp76$14 = bitcast %__list* %__env$2 to %__list*
  %temp77$15 = getelementptr %__list, %__list* %__ctemp7$13, i32 0, i32 1
  store %__list* %temp76$14, %__list** %temp77$15
  %temp75$16 = bitcast %__list* %temp76$14 to %__list*
  %temp81$17 = bitcast %__clos* %hd0_clos$4 to %__clos*
  %temp79$18 = ptrtoint %__clos* %temp81$17 to i32
  %temp80$19 = getelementptr %__list, %__list* %__ctemp7$13, i32 0, i32 0
  store i32 %temp79$18, i32* %temp80$19
  %temp78$20 = bitcast i32 %temp79$18 to i32
  %__env$21 = bitcast %__list* %__ctemp7$13 to %__list*
  %temp82$22 = bitcast %__list* %__env$21 to %__list*
  %temp84$23 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp85$24 = bitcast i32 0 to i32
  %temp86$25 = bitcast %__list* %__env$21 to %__list*
  %temp83$26 = call i32 %temp84$23(i32 %temp85$24, %__list* %temp86$25)
  %__ctemp8$27 = inttoptr i32 %temp83$26 to %__clos*
  %temp87$28 = call i8* @malloc(i32 8)
  %__ctemp9$29 = bitcast i8* %temp87$28 to %__list*
  %temp91$30 = bitcast i32 2 to i32
  %temp89$31 = bitcast i32 %temp91$30 to i32
  %temp90$32 = getelementptr %__list, %__list* %__ctemp9$29, i32 0, i32 0
  store i32 %temp89$31, i32* %temp90$32
  %temp88$33 = bitcast i32 %temp89$31 to i32
  %temp95$34 = bitcast i32 0 to i32
  %temp93$35 = inttoptr i32 %temp95$34 to %__list*
  %temp94$36 = getelementptr %__list, %__list* %__ctemp9$29, i32 0, i32 1
  store %__list* %temp93$35, %__list** %temp94$36
  %temp92$37 = bitcast %__list* %temp93$35 to %__list*
  %temp96$38 = call i8* @malloc(i32 8)
  %__ctemp10$39 = bitcast i8* %temp96$38 to %__list*
  %temp100$40 = bitcast i32 1 to i32
  %temp98$41 = bitcast i32 %temp100$40 to i32
  %temp99$42 = getelementptr %__list, %__list* %__ctemp10$39, i32 0, i32 0
  store i32 %temp98$41, i32* %temp99$42
  %temp97$43 = bitcast i32 %temp98$41 to i32
  %temp102$44 = bitcast %__list* %__ctemp9$29 to %__list*
  %temp103$45 = getelementptr %__list, %__list* %__ctemp10$39, i32 0, i32 1
  store %__list* %temp102$44, %__list** %temp103$45
  %temp101$46 = bitcast %__list* %temp102$44 to %__list*
  %temp108$47 = bitcast %__clos* %__ctemp8$27 to %__clos*
  %temp109$48 = getelementptr %__clos, %__clos* %temp108$47, i32 0, i32 1
  %temp107$49 = load i32 ()*, i32 ()** %temp109$48
  %temp104$50 = bitcast i32 ()* %temp107$49 to i32 (%__list*, %__list*)*
  %temp105$51 = bitcast %__list* %__ctemp10$39 to %__list*
  %temp110$52 = bitcast %__clos* %__ctemp8$27 to %__clos*
  %temp111$53 = getelementptr %__clos, %__clos* %temp110$52, i32 0, i32 0
  %temp106$54 = load %__list*, %__list** %temp111$53
  %__ctemp11$55 = call i32 %temp104$50(%__list* %temp105$51, %__list* %temp106$54)
  %temp113$56 = bitcast %__list* %__env$21 to %__list*
  %temp114$57 = getelementptr %__list, %__list* %temp113$56, i32 0, i32 1
  %__env$58 = load %__list*, %__list** %temp114$57
  %temp112$59 = bitcast %__list* %__env$58 to %__list*
  %temp115$60 = bitcast i32 %__ctemp11$55 to i32
  ret i32 %temp115$60
}
