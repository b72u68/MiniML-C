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

define i32 @fib0__body(i32 %n, %__list* %__env) {
fib0__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %n to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 0 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp2$16 = bitcast i32 %temp22$15 to i32
  %temp71$17 = bitcast i32 %__ctemp2$16 to i32
  %temp72$18 = bitcast i32 1 to i32
  %temp70$19 = icmp sle i32 %temp71$17, %temp72$18
  br i1 %temp70$19, label %label5, label %label6
label5:
  %temp27$115 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$116 = bitcast i32 0 to i32
  %temp29$117 = bitcast %__list* %__env$10 to %__list*
  %temp26$118 = call i32 %temp27$115(i32 %temp28$116, %__list* %temp29$117)
  %__ctemp3$119 = bitcast i32 %temp26$118 to i32
  %__ctemp8$120 = bitcast i32 %__ctemp3$119 to i32
  %temp30$121 = bitcast i32 %__ctemp8$120 to i32
  br label %label7
label6:
  %temp32$71 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp33$72 = bitcast i32 1 to i32
  %temp34$73 = bitcast %__list* %__env$10 to %__list*
  %temp31$74 = call i32 %temp32$71(i32 %temp33$72, %__list* %temp34$73)
  %__ctemp4$75 = inttoptr i32 %temp31$74 to %__clos*
  %temp36$76 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp37$77 = bitcast i32 0 to i32
  %temp38$78 = bitcast %__list* %__env$10 to %__list*
  %temp35$79 = call i32 %temp36$76(i32 %temp37$77, %__list* %temp38$78)
  %__ctemp5$80 = bitcast i32 %temp35$79 to i32
  %temp40$81 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp41$82 = bitcast i32 1 to i32
  %temp42$83 = bitcast %__list* %__env$10 to %__list*
  %temp39$84 = call i32 %temp40$81(i32 %temp41$82, %__list* %temp42$83)
  %__ctemp6$85 = inttoptr i32 %temp39$84 to %__clos*
  %temp44$86 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp45$87 = bitcast i32 0 to i32
  %temp46$88 = bitcast %__list* %__env$10 to %__list*
  %temp43$89 = call i32 %temp44$86(i32 %temp45$87, %__list* %temp46$88)
  %__ctemp7$90 = bitcast i32 %temp43$89 to i32
  %temp54$91 = bitcast %__clos* %__ctemp4$75 to %__clos*
  %temp55$92 = getelementptr %__clos, %__clos* %temp54$91, i32 0, i32 1
  %temp53$93 = load i32 ()*, i32 ()** %temp55$92
  %temp50$94 = bitcast i32 ()* %temp53$93 to i32 (i32, %__list*)*
  %temp56$95 = bitcast i32 %__ctemp5$80 to i32
  %temp57$96 = bitcast i32 2 to i32
  %temp51$97 = sub i32 %temp56$95, %temp57$96
  %temp58$98 = bitcast %__clos* %__ctemp4$75 to %__clos*
  %temp59$99 = getelementptr %__clos, %__clos* %temp58$98, i32 0, i32 0
  %temp52$100 = load %__list*, %__list** %temp59$99
  %temp48$101 = call i32 %temp50$94(i32 %temp51$97, %__list* %temp52$100)
  %temp64$102 = bitcast %__clos* %__ctemp6$85 to %__clos*
  %temp65$103 = getelementptr %__clos, %__clos* %temp64$102, i32 0, i32 1
  %temp63$104 = load i32 ()*, i32 ()** %temp65$103
  %temp60$105 = bitcast i32 ()* %temp63$104 to i32 (i32, %__list*)*
  %temp66$106 = bitcast i32 %__ctemp7$90 to i32
  %temp67$107 = bitcast i32 1 to i32
  %temp61$108 = sub i32 %temp66$106, %temp67$107
  %temp68$109 = bitcast %__clos* %__ctemp6$85 to %__clos*
  %temp69$110 = getelementptr %__clos, %__clos* %temp68$109, i32 0, i32 0
  %temp62$111 = load %__list*, %__list** %temp69$110
  %temp49$112 = call i32 %temp60$105(i32 %temp61$108, %__list* %temp62$111)
  %__ctemp8$113 = add i32 %temp48$101, %temp49$112
  %temp47$114 = bitcast i32 %__ctemp8$113 to i32
  br label %label7
label7:
  %temp69$20 = phi %__list** [null, %label5], [%temp69$110, %label6]
  %temp68$21 = phi %__clos* [null, %label5], [%temp68$109, %label6]
  %temp67$22 = phi i32 [0, %label5], [%temp67$107, %label6]
  %temp66$23 = phi i32 [0, %label5], [%temp66$106, %label6]
  %temp65$24 = phi i32 ()** [null, %label5], [%temp65$103, %label6]
  %temp64$25 = phi %__clos* [null, %label5], [%temp64$102, %label6]
  %temp63$26 = phi i32 ()* [null, %label5], [%temp63$104, %label6]
  %temp62$27 = phi %__list* [null, %label5], [%temp62$111, %label6]
  %temp61$28 = phi i32 [0, %label5], [%temp61$108, %label6]
  %temp60$29 = phi i32 (i32, %__list*)* [null, %label5], [%temp60$105, %label6]
  %temp59$30 = phi %__list** [null, %label5], [%temp59$99, %label6]
  %temp58$31 = phi %__clos* [null, %label5], [%temp58$98, %label6]
  %temp57$32 = phi i32 [0, %label5], [%temp57$96, %label6]
  %temp56$33 = phi i32 [0, %label5], [%temp56$95, %label6]
  %temp55$34 = phi i32 ()** [null, %label5], [%temp55$92, %label6]
  %temp54$35 = phi %__clos* [null, %label5], [%temp54$91, %label6]
  %temp53$36 = phi i32 ()* [null, %label5], [%temp53$93, %label6]
  %temp52$37 = phi %__list* [null, %label5], [%temp52$100, %label6]
  %temp51$38 = phi i32 [0, %label5], [%temp51$97, %label6]
  %temp50$39 = phi i32 (i32, %__list*)* [null, %label5], [%temp50$94, %label6]
  %temp49$40 = phi i32 [0, %label5], [%temp49$112, %label6]
  %temp48$41 = phi i32 [0, %label5], [%temp48$101, %label6]
  %temp47$42 = phi i32 [0, %label5], [%temp47$114, %label6]
  %temp46$43 = phi %__list* [null, %label5], [%temp46$88, %label6]
  %temp45$44 = phi i32 [0, %label5], [%temp45$87, %label6]
  %temp44$45 = phi i32 (i32, %__list*)* [null, %label5], [%temp44$86, %label6]
  %temp43$46 = phi i32 [0, %label5], [%temp43$89, %label6]
  %temp42$47 = phi %__list* [null, %label5], [%temp42$83, %label6]
  %temp41$48 = phi i32 [0, %label5], [%temp41$82, %label6]
  %temp40$49 = phi i32 (i32, %__list*)* [null, %label5], [%temp40$81, %label6]
  %temp39$50 = phi i32 [0, %label5], [%temp39$84, %label6]
  %temp38$51 = phi %__list* [null, %label5], [%temp38$78, %label6]
  %temp37$52 = phi i32 [0, %label5], [%temp37$77, %label6]
  %temp36$53 = phi i32 (i32, %__list*)* [null, %label5], [%temp36$76, %label6]
  %temp35$54 = phi i32 [0, %label5], [%temp35$79, %label6]
  %temp34$55 = phi %__list* [null, %label5], [%temp34$73, %label6]
  %temp33$56 = phi i32 [0, %label5], [%temp33$72, %label6]
  %temp32$57 = phi i32 (i32, %__list*)* [null, %label5], [%temp32$71, %label6]
  %temp31$58 = phi i32 [0, %label5], [%temp31$74, %label6]
  %temp30$59 = phi i32 [%temp30$121, %label5], [0, %label6]
  %temp29$60 = phi %__list* [%temp29$117, %label5], [null, %label6]
  %temp28$61 = phi i32 [%temp28$116, %label5], [0, %label6]
  %temp27$62 = phi i32 (i32, %__list*)* [%temp27$115, %label5], [null, %label6]
  %temp26$63 = phi i32 [%temp26$118, %label5], [0, %label6]
  %__ctemp8$64 = phi i32 [%__ctemp8$120, %label5], [%__ctemp8$113, %label6]
  %__ctemp7$65 = phi i32 [0, %label5], [%__ctemp7$90, %label6]
  %__ctemp6$66 = phi %__clos* [null, %label5], [%__ctemp6$85, %label6]
  %__ctemp5$67 = phi i32 [0, %label5], [%__ctemp5$80, %label6]
  %__ctemp4$68 = phi %__clos* [null, %label5], [%__ctemp4$75, %label6]
  %__ctemp3$69 = phi i32 [%__ctemp3$119, %label5], [0, %label6]
  %temp73$70 = bitcast i32 %__ctemp8$64 to i32
  ret i32 %temp73$70
}

define i32 @main() {
main__entry:
  %temp74$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp74$1 to %__list*
  %temp75$3 = call i8* @malloc(i32 8)
  %fib0_clos$4 = bitcast i8* %temp75$3 to %__clos*
  %temp77$5 = bitcast %__list* %__env$2 to %__list*
  %temp78$6 = getelementptr %__clos, %__clos* %fib0_clos$4, i32 0, i32 0
  store %__list* %temp77$5, %__list** %temp78$6
  %temp76$7 = bitcast %__list* %temp77$5 to %__list*
  %temp82$8 = bitcast i32 (i32, %__list*)* @fib0__body to i32 (i32, %__list*)*
  %temp80$9 = bitcast i32 (i32, %__list*)* %temp82$8 to i32 ()*
  %temp81$10 = getelementptr %__clos, %__clos* %fib0_clos$4, i32 0, i32 1
  store i32 ()* %temp80$9, i32 ()** %temp81$10
  %temp79$11 = bitcast i32 ()* %temp80$9 to i32 ()*
  %temp83$12 = call i8* @malloc(i32 8)
  %__ctemp9$13 = bitcast i8* %temp83$12 to %__list*
  %temp85$14 = bitcast %__list* %__env$2 to %__list*
  %temp86$15 = getelementptr %__list, %__list* %__ctemp9$13, i32 0, i32 1
  store %__list* %temp85$14, %__list** %temp86$15
  %temp84$16 = bitcast %__list* %temp85$14 to %__list*
  %temp90$17 = bitcast %__clos* %fib0_clos$4 to %__clos*
  %temp88$18 = ptrtoint %__clos* %temp90$17 to i32
  %temp89$19 = getelementptr %__list, %__list* %__ctemp9$13, i32 0, i32 0
  store i32 %temp88$18, i32* %temp89$19
  %temp87$20 = bitcast i32 %temp88$18 to i32
  %__env$21 = bitcast %__list* %__ctemp9$13 to %__list*
  %temp91$22 = bitcast %__list* %__env$21 to %__list*
  %temp93$23 = bitcast %__list* %__env$21 to %__list*
  %temp94$24 = getelementptr %__clos, %__clos* %fib0_clos$4, i32 0, i32 0
  store %__list* %temp93$23, %__list** %temp94$24
  %temp92$25 = bitcast %__list* %temp93$23 to %__list*
  %temp96$26 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp97$27 = bitcast i32 0 to i32
  %temp98$28 = bitcast %__list* %__env$21 to %__list*
  %temp95$29 = call i32 %temp96$26(i32 %temp97$27, %__list* %temp98$28)
  %__ctemp10$30 = inttoptr i32 %temp95$29 to %__clos*
  %temp103$31 = bitcast %__clos* %__ctemp10$30 to %__clos*
  %temp104$32 = getelementptr %__clos, %__clos* %temp103$31, i32 0, i32 1
  %temp102$33 = load i32 ()*, i32 ()** %temp104$32
  %temp99$34 = bitcast i32 ()* %temp102$33 to i32 (i32, %__list*)*
  %temp100$35 = bitcast i32 6 to i32
  %temp105$36 = bitcast %__clos* %__ctemp10$30 to %__clos*
  %temp106$37 = getelementptr %__clos, %__clos* %temp105$36, i32 0, i32 0
  %temp101$38 = load %__list*, %__list** %temp106$37
  %__ctemp11$39 = call i32 %temp99$34(i32 %temp100$35, %__list* %temp101$38)
  %temp108$40 = bitcast %__list* %__env$21 to %__list*
  %temp109$41 = getelementptr %__list, %__list* %temp108$40, i32 0, i32 1
  %__env$42 = load %__list*, %__list** %temp109$41
  %temp107$43 = bitcast %__list* %__env$42 to %__list*
  %temp110$44 = bitcast i32 %__ctemp11$39 to i32
  ret i32 %temp110$44
}
