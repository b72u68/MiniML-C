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

define i32 @main() {
main__entry:
  %temp13$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp13$1 to %__list*
  %temp14$3 = call i8* @malloc(i32 8)
  %__ctemp0$4 = bitcast i8* %temp14$3 to %__list*
  %temp16$5 = bitcast %__list* %__env$2 to %__list*
  %temp17$6 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 1
  store %__list* %temp16$5, %__list** %temp17$6
  %temp15$7 = bitcast %__list* %temp16$5 to %__list*
  %temp21$8 = bitcast i32 2 to i32
  %temp19$9 = bitcast i32 %temp21$8 to i32
  %temp20$10 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 0
  store i32 %temp19$9, i32* %temp20$10
  %temp18$11 = bitcast i32 %temp19$9 to i32
  %__env$12 = bitcast %__list* %__ctemp0$4 to %__list*
  %temp22$13 = bitcast %__list* %__env$12 to %__list*
  %temp23$14 = call i8* @malloc(i32 8)
  %__ctemp1$15 = bitcast i8* %temp23$14 to %__list*
  %temp25$16 = bitcast %__list* %__env$12 to %__list*
  %temp26$17 = getelementptr %__list, %__list* %__ctemp1$15, i32 0, i32 1
  store %__list* %temp25$16, %__list** %temp26$17
  %temp24$18 = bitcast %__list* %temp25$16 to %__list*
  %temp30$19 = bitcast i32 1 to i32
  %temp28$20 = bitcast i32 %temp30$19 to i32
  %temp29$21 = getelementptr %__list, %__list* %__ctemp1$15, i32 0, i32 0
  store i32 %temp28$20, i32* %temp29$21
  %temp27$22 = bitcast i32 %temp28$20 to i32
  %__env$23 = bitcast %__list* %__ctemp1$15 to %__list*
  %temp31$24 = bitcast %__list* %__env$23 to %__list*
  %temp33$25 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp34$26 = bitcast i32 0 to i32
  %temp35$27 = bitcast %__list* %__env$23 to %__list*
  %temp32$28 = call i32 %temp33$25(i32 %temp34$26, %__list* %temp35$27)
  %__ctemp2$29 = bitcast i32 %temp32$28 to i32
  %temp37$30 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp38$31 = bitcast i32 0 to i32
  %temp39$32 = bitcast %__list* %__env$23 to %__list*
  %temp36$33 = call i32 %temp37$30(i32 %temp38$31, %__list* %temp39$32)
  %__ctemp3$34 = bitcast i32 %temp36$33 to i32
  %temp40$35 = bitcast i32 %__ctemp2$29 to i32
  %temp41$36 = bitcast i32 %__ctemp3$34 to i32
  %__ctemp4$37 = add i32 %temp40$35, %temp41$36
  %temp43$38 = bitcast %__list* %__env$23 to %__list*
  %temp44$39 = getelementptr %__list, %__list* %temp43$38, i32 0, i32 1
  %__env$40 = load %__list*, %__list** %temp44$39
  %temp42$41 = bitcast %__list* %__env$40 to %__list*
  %temp46$42 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp47$43 = bitcast i32 0 to i32
  %temp48$44 = bitcast %__list* %__env$40 to %__list*
  %temp45$45 = call i32 %temp46$42(i32 %temp47$43, %__list* %temp48$44)
  %__ctemp5$46 = bitcast i32 %temp45$45 to i32
  %temp49$47 = call i8* @malloc(i32 8)
  %__ctemp6$48 = bitcast i8* %temp49$47 to %__list*
  %temp51$49 = bitcast %__list* %__env$40 to %__list*
  %temp52$50 = getelementptr %__list, %__list* %__ctemp6$48, i32 0, i32 1
  store %__list* %temp51$49, %__list** %temp52$50
  %temp50$51 = bitcast %__list* %temp51$49 to %__list*
  %temp57$52 = bitcast i32 %__ctemp4$37 to i32
  %temp58$53 = bitcast i32 %__ctemp5$46 to i32
  %temp56$54 = add i32 %temp57$52, %temp58$53
  %temp54$55 = bitcast i32 %temp56$54 to i32
  %temp55$56 = getelementptr %__list, %__list* %__ctemp6$48, i32 0, i32 0
  store i32 %temp54$55, i32* %temp55$56
  %temp53$57 = bitcast i32 %temp54$55 to i32
  %__env$58 = bitcast %__list* %__ctemp6$48 to %__list*
  %temp59$59 = bitcast %__list* %__env$58 to %__list*
  %temp61$60 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp62$61 = bitcast i32 0 to i32
  %temp63$62 = bitcast %__list* %__env$58 to %__list*
  %temp60$63 = call i32 %temp61$60(i32 %temp62$61, %__list* %temp63$62)
  %__ctemp7$64 = bitcast i32 %temp60$63 to i32
  %__ctemp8$65 = bitcast i32 %__ctemp7$64 to i32
  %temp65$66 = bitcast %__list* %__env$58 to %__list*
  %temp66$67 = getelementptr %__list, %__list* %temp65$66, i32 0, i32 1
  %__env$68 = load %__list*, %__list** %temp66$67
  %temp64$69 = bitcast %__list* %__env$68 to %__list*
  %__ctemp9$70 = bitcast i32 %__ctemp8$65 to i32
  %temp68$71 = bitcast %__list* %__env$68 to %__list*
  %temp69$72 = getelementptr %__list, %__list* %temp68$71, i32 0, i32 1
  %__env$73 = load %__list*, %__list** %temp69$72
  %temp67$74 = bitcast %__list* %__env$73 to %__list*
  %temp70$75 = bitcast i32 %__ctemp9$70 to i32
  ret i32 %temp70$75
}
