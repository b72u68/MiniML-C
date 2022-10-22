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

define i32 @fst0__body(%__pair* %p, %__list* %__env) {
fst0__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast %__pair* %p to %__pair*
  %temp18$7 = ptrtoint %__pair* %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 0 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp2$16 = inttoptr i32 %temp22$15 to %__pair*
  %temp26$17 = call i8* @malloc(i32 8)
  %__ctemp3$18 = bitcast i8* %temp26$17 to %__list*
  %temp28$19 = bitcast %__list* %__env$10 to %__list*
  %temp29$20 = getelementptr %__list, %__list* %__ctemp3$18, i32 0, i32 1
  store %__list* %temp28$19, %__list** %temp29$20
  %temp27$21 = bitcast %__list* %temp28$19 to %__list*
  %temp34$22 = bitcast %__pair* %__ctemp2$16 to %__pair*
  %temp35$23 = getelementptr %__pair, %__pair* %temp34$22, i32 0, i32 0
  %temp33$24 = load i32, i32* %temp35$23
  %temp31$25 = bitcast i32 %temp33$24 to i32
  %temp32$26 = getelementptr %__list, %__list* %__ctemp3$18, i32 0, i32 0
  store i32 %temp31$25, i32* %temp32$26
  %temp30$27 = bitcast i32 %temp31$25 to i32
  %__env$28 = bitcast %__list* %__ctemp3$18 to %__list*
  %temp36$29 = bitcast %__list* %__env$28 to %__list*
  %temp37$30 = call i8* @malloc(i32 8)
  %__ctemp4$31 = bitcast i8* %temp37$30 to %__list*
  %temp39$32 = bitcast %__list* %__env$28 to %__list*
  %temp40$33 = getelementptr %__list, %__list* %__ctemp4$31, i32 0, i32 1
  store %__list* %temp39$32, %__list** %temp40$33
  %temp38$34 = bitcast %__list* %temp39$32 to %__list*
  %temp45$35 = bitcast %__pair* %__ctemp2$16 to %__pair*
  %temp46$36 = getelementptr %__pair, %__pair* %temp45$35, i32 0, i32 1
  %temp44$37 = load i32, i32* %temp46$36
  %temp42$38 = bitcast i32 %temp44$37 to i32
  %temp43$39 = getelementptr %__list, %__list* %__ctemp4$31, i32 0, i32 0
  store i32 %temp42$38, i32* %temp43$39
  %temp41$40 = bitcast i32 %temp42$38 to i32
  %__env$41 = bitcast %__list* %__ctemp4$31 to %__list*
  %temp47$42 = bitcast %__list* %__env$41 to %__list*
  %temp49$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp50$44 = bitcast i32 1 to i32
  %temp51$45 = bitcast %__list* %__env$41 to %__list*
  %temp48$46 = call i32 %temp49$43(i32 %temp50$44, %__list* %temp51$45)
  %__ctemp5$47 = bitcast i32 %temp48$46 to i32
  %__ctemp6$48 = bitcast i32 %__ctemp5$47 to i32
  %temp53$49 = bitcast %__list* %__env$41 to %__list*
  %temp54$50 = getelementptr %__list, %__list* %temp53$49, i32 0, i32 1
  %__env$51 = load %__list*, %__list** %temp54$50
  %temp52$52 = bitcast %__list* %__env$51 to %__list*
  %temp56$53 = bitcast %__list* %__env$51 to %__list*
  %temp57$54 = getelementptr %__list, %__list* %temp56$53, i32 0, i32 1
  %__env$55 = load %__list*, %__list** %temp57$54
  %temp55$56 = bitcast %__list* %__env$55 to %__list*
  %temp58$57 = bitcast i32 %__ctemp6$48 to i32
  ret i32 %temp58$57
}

define i32 @main() {
main__entry:
  %temp59$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp59$1 to %__list*
  %temp60$3 = call i8* @malloc(i32 8)
  %fst0_clos$4 = bitcast i8* %temp60$3 to %__clos*
  %temp62$5 = bitcast %__list* %__env$2 to %__list*
  %temp63$6 = getelementptr %__clos, %__clos* %fst0_clos$4, i32 0, i32 0
  store %__list* %temp62$5, %__list** %temp63$6
  %temp61$7 = bitcast %__list* %temp62$5 to %__list*
  %temp67$8 = bitcast i32 (%__pair*, %__list*)* @fst0__body to i32 (%__pair*, %__list*)*
  %temp65$9 = bitcast i32 (%__pair*, %__list*)* %temp67$8 to i32 ()*
  %temp66$10 = getelementptr %__clos, %__clos* %fst0_clos$4, i32 0, i32 1
  store i32 ()* %temp65$9, i32 ()** %temp66$10
  %temp64$11 = bitcast i32 ()* %temp65$9 to i32 ()*
  %temp68$12 = call i8* @malloc(i32 8)
  %__ctemp7$13 = bitcast i8* %temp68$12 to %__list*
  %temp70$14 = bitcast %__list* %__env$2 to %__list*
  %temp71$15 = getelementptr %__list, %__list* %__ctemp7$13, i32 0, i32 1
  store %__list* %temp70$14, %__list** %temp71$15
  %temp69$16 = bitcast %__list* %temp70$14 to %__list*
  %temp75$17 = bitcast %__clos* %fst0_clos$4 to %__clos*
  %temp73$18 = ptrtoint %__clos* %temp75$17 to i32
  %temp74$19 = getelementptr %__list, %__list* %__ctemp7$13, i32 0, i32 0
  store i32 %temp73$18, i32* %temp74$19
  %temp72$20 = bitcast i32 %temp73$18 to i32
  %__env$21 = bitcast %__list* %__ctemp7$13 to %__list*
  %temp76$22 = bitcast %__list* %__env$21 to %__list*
  %temp78$23 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp79$24 = bitcast i32 0 to i32
  %temp80$25 = bitcast %__list* %__env$21 to %__list*
  %temp77$26 = call i32 %temp78$23(i32 %temp79$24, %__list* %temp80$25)
  %__ctemp8$27 = inttoptr i32 %temp77$26 to %__clos*
  %temp81$28 = call i8* @malloc(i32 8)
  %__ctemp9$29 = bitcast i8* %temp81$28 to %__pair*
  %temp85$30 = bitcast i32 2 to i32
  %temp83$31 = bitcast i32 %temp85$30 to i32
  %temp84$32 = getelementptr %__pair, %__pair* %__ctemp9$29, i32 0, i32 0
  store i32 %temp83$31, i32* %temp84$32
  %temp82$33 = bitcast i32 %temp83$31 to i32
  %temp89$34 = bitcast i32 1 to i32
  %temp87$35 = bitcast i32 %temp89$34 to i32
  %temp88$36 = getelementptr %__pair, %__pair* %__ctemp9$29, i32 0, i32 1
  store i32 %temp87$35, i32* %temp88$36
  %temp86$37 = bitcast i32 %temp87$35 to i32
  %temp94$38 = bitcast %__clos* %__ctemp8$27 to %__clos*
  %temp95$39 = getelementptr %__clos, %__clos* %temp94$38, i32 0, i32 1
  %temp93$40 = load i32 ()*, i32 ()** %temp95$39
  %temp90$41 = bitcast i32 ()* %temp93$40 to i32 (%__pair*, %__list*)*
  %temp91$42 = bitcast %__pair* %__ctemp9$29 to %__pair*
  %temp96$43 = bitcast %__clos* %__ctemp8$27 to %__clos*
  %temp97$44 = getelementptr %__clos, %__clos* %temp96$43, i32 0, i32 0
  %temp92$45 = load %__list*, %__list** %temp97$44
  %__ctemp10$46 = call i32 %temp90$41(%__pair* %temp91$42, %__list* %temp92$45)
  %temp99$47 = bitcast %__list* %__env$21 to %__list*
  %temp100$48 = getelementptr %__list, %__list* %temp99$47, i32 0, i32 1
  %__env$49 = load %__list*, %__list** %temp100$48
  %temp98$50 = bitcast %__list* %__env$49 to %__list*
  %temp101$51 = bitcast i32 %__ctemp10$46 to i32
  ret i32 %temp101$51
}
