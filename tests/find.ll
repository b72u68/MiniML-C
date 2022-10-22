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

define i32 @find6__body(%__list* %l, %__list* %__env) {
find6__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp7$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp7$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast %__list* %l to %__list*
  %temp18$7 = ptrtoint %__list* %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp7$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp7$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp22$12 = call i8* @malloc(i32 8)
  %__ctemp8$13 = bitcast i8* %temp22$12 to %__list*
  %temp24$14 = bitcast %__list* %__env$10 to %__list*
  %temp25$15 = getelementptr %__list, %__list* %__ctemp8$13, i32 0, i32 1
  store %__list* %temp24$14, %__list** %temp25$15
  %temp23$16 = bitcast %__list* %temp24$14 to %__list*
  %temp29$17 = bitcast i32 3 to i32
  %temp27$18 = bitcast i32 %temp29$17 to i32
  %temp28$19 = getelementptr %__list, %__list* %__ctemp8$13, i32 0, i32 0
  store i32 %temp27$18, i32* %temp28$19
  %temp26$20 = bitcast i32 %temp27$18 to i32
  %__env$21 = bitcast %__list* %__ctemp8$13 to %__list*
  %temp30$22 = bitcast %__list* %__env$21 to %__list*
  %temp32$23 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp33$24 = bitcast i32 1 to i32
  %temp34$25 = bitcast %__list* %__env$21 to %__list*
  %temp31$26 = call i32 %temp32$23(i32 %temp33$24, %__list* %temp34$25)
  %__ctemp9$27 = inttoptr i32 %temp31$26 to %__list*
  %temp101$28 = bitcast %__list* %__ctemp9$27 to %__list*
  %temp99$29 = ptrtoint %__list* %temp101$28 to i32
  %temp100$30 = bitcast i32 0 to i32
  %temp98$31 = icmp eq i32 %temp99$29, %temp100$30
  br i1 %temp98$31, label %label5, label %label6
label10:
  %temp87$177 = phi %__list** [null, %label8], [%temp87$166, %label9]
  %temp86$178 = phi %__clos* [null, %label8], [%temp86$165, %label9]
  %temp85$179 = phi i32 ()** [null, %label8], [%temp85$161, %label9]
  %temp84$180 = phi %__clos* [null, %label8], [%temp84$160, %label9]
  %temp83$181 = phi i32 ()* [null, %label8], [%temp83$162, %label9]
  %temp82$182 = phi %__list* [null, %label8], [%temp82$167, %label9]
  %temp81$183 = phi %__list* [null, %label8], [%temp81$164, %label9]
  %temp80$184 = phi i32 (%__list*, %__list*)* [null, %label8], [%temp80$163, %label9]
  %temp79$185 = phi i32 [0, %label8], [%temp79$169, %label9]
  %temp78$186 = phi %__list* [null, %label8], [%temp78$157, %label9]
  %temp77$187 = phi i32 [0, %label8], [%temp77$156, %label9]
  %temp76$188 = phi i32 (i32, %__list*)* [null, %label8], [%temp76$155, %label9]
  %temp75$189 = phi i32 [0, %label8], [%temp75$158, %label9]
  %temp74$190 = phi %__list* [null, %label8], [%temp74$152, %label9]
  %temp73$191 = phi i32 [0, %label8], [%temp73$151, %label9]
  %temp72$192 = phi i32 (i32, %__list*)* [null, %label8], [%temp72$150, %label9]
  %temp71$193 = phi i32 [0, %label8], [%temp71$153, %label9]
  %temp70$194 = phi i32 [%temp70$176, %label8], [0, %label9]
  %temp69$195 = phi %__list* [%temp69$172, %label8], [null, %label9]
  %temp68$196 = phi i32 [%temp68$171, %label8], [0, %label9]
  %temp67$197 = phi i32 (i32, %__list*)* [%temp67$170, %label8], [null, %label9]
  %temp66$198 = phi i32 [%temp66$173, %label8], [0, %label9]
  %__ctemp18$199 = phi i32 [%__ctemp18$175, %label8], [%__ctemp18$168, %label9]
  %__ctemp17$200 = phi %__list* [null, %label8], [%__ctemp17$159, %label9]
  %__ctemp16$201 = phi %__clos* [null, %label8], [%__ctemp16$154, %label9]
  %__ctemp15$202 = phi i32 [%__ctemp15$174, %label8], [0, %label9]
  %__ctemp10$203 = bitcast i32 %__ctemp18$199 to i32
  %temp91$204 = bitcast i32 %__ctemp10$203 to i32
  %temp93$205 = bitcast %__list* %__env$135 to %__list*
  %temp94$206 = getelementptr %__list, %__list* %temp93$205, i32 0, i32 1
  %__env$207 = load %__list*, %__list** %temp94$206
  %temp92$208 = bitcast %__list* %__env$207 to %__list*
  %temp96$209 = bitcast %__list* %__env$207 to %__list*
  %temp97$210 = getelementptr %__list, %__list* %temp96$209, i32 0, i32 1
  %__env$211 = load %__list*, %__list** %temp97$210
  %temp95$212 = bitcast %__list* %__env$211 to %__list*
  br label %label7
label5:
  %__ctemp10$213 = bitcast i32 0 to i32
  %temp35$214 = bitcast i32 %__ctemp10$213 to i32
  br label %label7
label6:
  %temp36$111 = call i8* @malloc(i32 8)
  %__ctemp11$112 = bitcast i8* %temp36$111 to %__list*
  %temp38$113 = bitcast %__list* %__env$21 to %__list*
  %temp39$114 = getelementptr %__list, %__list* %__ctemp11$112, i32 0, i32 1
  store %__list* %temp38$113, %__list** %temp39$114
  %temp37$115 = bitcast %__list* %temp38$113 to %__list*
  %temp44$116 = bitcast %__list* %__ctemp9$27 to %__list*
  %temp45$117 = getelementptr %__list, %__list* %temp44$116, i32 0, i32 0
  %temp43$118 = load i32, i32* %temp45$117
  %temp41$119 = bitcast i32 %temp43$118 to i32
  %temp42$120 = getelementptr %__list, %__list* %__ctemp11$112, i32 0, i32 0
  store i32 %temp41$119, i32* %temp42$120
  %temp40$121 = bitcast i32 %temp41$119 to i32
  %__env$122 = bitcast %__list* %__ctemp11$112 to %__list*
  %temp46$123 = bitcast %__list* %__env$122 to %__list*
  %temp47$124 = call i8* @malloc(i32 8)
  %__ctemp12$125 = bitcast i8* %temp47$124 to %__list*
  %temp49$126 = bitcast %__list* %__env$122 to %__list*
  %temp50$127 = getelementptr %__list, %__list* %__ctemp12$125, i32 0, i32 1
  store %__list* %temp49$126, %__list** %temp50$127
  %temp48$128 = bitcast %__list* %temp49$126 to %__list*
  %temp55$129 = bitcast %__list* %__ctemp9$27 to %__list*
  %temp56$130 = getelementptr %__list, %__list* %temp55$129, i32 0, i32 1
  %temp54$131 = load %__list*, %__list** %temp56$130
  %temp52$132 = ptrtoint %__list* %temp54$131 to i32
  %temp53$133 = getelementptr %__list, %__list* %__ctemp12$125, i32 0, i32 0
  store i32 %temp52$132, i32* %temp53$133
  %temp51$134 = bitcast i32 %temp52$132 to i32
  %__env$135 = bitcast %__list* %__ctemp12$125 to %__list*
  %temp57$136 = bitcast %__list* %__env$135 to %__list*
  %temp59$137 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp60$138 = bitcast i32 1 to i32
  %temp61$139 = bitcast %__list* %__env$135 to %__list*
  %temp58$140 = call i32 %temp59$137(i32 %temp60$138, %__list* %temp61$139)
  %__ctemp13$141 = bitcast i32 %temp58$140 to i32
  %temp63$142 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp64$143 = bitcast i32 2 to i32
  %temp65$144 = bitcast %__list* %__env$135 to %__list*
  %temp62$145 = call i32 %temp63$142(i32 %temp64$143, %__list* %temp65$144)
  %__ctemp14$146 = bitcast i32 %temp62$145 to i32
  %temp89$147 = bitcast i32 %__ctemp13$141 to i32
  %temp90$148 = bitcast i32 %__ctemp14$146 to i32
  %temp88$149 = icmp eq i32 %temp89$147, %temp90$148
  br i1 %temp88$149, label %label8, label %label9
label7:
  %temp97$32 = phi %__list** [null, %label5], [%temp97$210, %label10]
  %temp96$33 = phi %__list* [null, %label5], [%temp96$209, %label10]
  %temp95$34 = phi %__list* [null, %label5], [%temp95$212, %label10]
  %temp94$35 = phi %__list** [null, %label5], [%temp94$206, %label10]
  %temp93$36 = phi %__list* [null, %label5], [%temp93$205, %label10]
  %temp92$37 = phi %__list* [null, %label5], [%temp92$208, %label10]
  %temp91$38 = phi i32 [0, %label5], [%temp91$204, %label10]
  %temp90$39 = phi i32 [0, %label5], [%temp90$148, %label10]
  %temp89$40 = phi i32 [0, %label5], [%temp89$147, %label10]
  %temp88$41 = phi i1 [0, %label5], [%temp88$149, %label10]
  %temp87$42 = phi %__list** [null, %label5], [%temp87$177, %label10]
  %temp86$43 = phi %__clos* [null, %label5], [%temp86$178, %label10]
  %temp85$44 = phi i32 ()** [null, %label5], [%temp85$179, %label10]
  %temp84$45 = phi %__clos* [null, %label5], [%temp84$180, %label10]
  %temp83$46 = phi i32 ()* [null, %label5], [%temp83$181, %label10]
  %temp82$47 = phi %__list* [null, %label5], [%temp82$182, %label10]
  %temp81$48 = phi %__list* [null, %label5], [%temp81$183, %label10]
  %temp80$49 = phi i32 (%__list*, %__list*)* [null, %label5], [%temp80$184, %label10]
  %temp79$50 = phi i32 [0, %label5], [%temp79$185, %label10]
  %temp78$51 = phi %__list* [null, %label5], [%temp78$186, %label10]
  %temp77$52 = phi i32 [0, %label5], [%temp77$187, %label10]
  %temp76$53 = phi i32 (i32, %__list*)* [null, %label5], [%temp76$188, %label10]
  %temp75$54 = phi i32 [0, %label5], [%temp75$189, %label10]
  %temp74$55 = phi %__list* [null, %label5], [%temp74$190, %label10]
  %temp73$56 = phi i32 [0, %label5], [%temp73$191, %label10]
  %temp72$57 = phi i32 (i32, %__list*)* [null, %label5], [%temp72$192, %label10]
  %temp71$58 = phi i32 [0, %label5], [%temp71$193, %label10]
  %temp70$59 = phi i32 [0, %label5], [%temp70$194, %label10]
  %temp69$60 = phi %__list* [null, %label5], [%temp69$195, %label10]
  %temp68$61 = phi i32 [0, %label5], [%temp68$196, %label10]
  %temp67$62 = phi i32 (i32, %__list*)* [null, %label5], [%temp67$197, %label10]
  %temp66$63 = phi i32 [0, %label5], [%temp66$198, %label10]
  %temp65$64 = phi %__list* [null, %label5], [%temp65$144, %label10]
  %temp64$65 = phi i32 [0, %label5], [%temp64$143, %label10]
  %temp63$66 = phi i32 (i32, %__list*)* [null, %label5], [%temp63$142, %label10]
  %temp62$67 = phi i32 [0, %label5], [%temp62$145, %label10]
  %temp61$68 = phi %__list* [null, %label5], [%temp61$139, %label10]
  %temp60$69 = phi i32 [0, %label5], [%temp60$138, %label10]
  %temp59$70 = phi i32 (i32, %__list*)* [null, %label5], [%temp59$137, %label10]
  %temp58$71 = phi i32 [0, %label5], [%temp58$140, %label10]
  %temp57$72 = phi %__list* [null, %label5], [%temp57$136, %label10]
  %temp56$73 = phi %__list** [null, %label5], [%temp56$130, %label10]
  %temp55$74 = phi %__list* [null, %label5], [%temp55$129, %label10]
  %temp54$75 = phi %__list* [null, %label5], [%temp54$131, %label10]
  %temp53$76 = phi i32* [null, %label5], [%temp53$133, %label10]
  %temp52$77 = phi i32 [0, %label5], [%temp52$132, %label10]
  %temp51$78 = phi i32 [0, %label5], [%temp51$134, %label10]
  %temp50$79 = phi %__list** [null, %label5], [%temp50$127, %label10]
  %temp49$80 = phi %__list* [null, %label5], [%temp49$126, %label10]
  %temp48$81 = phi %__list* [null, %label5], [%temp48$128, %label10]
  %temp47$82 = phi i8* [null, %label5], [%temp47$124, %label10]
  %temp46$83 = phi %__list* [null, %label5], [%temp46$123, %label10]
  %temp45$84 = phi i32* [null, %label5], [%temp45$117, %label10]
  %temp44$85 = phi %__list* [null, %label5], [%temp44$116, %label10]
  %temp43$86 = phi i32 [0, %label5], [%temp43$118, %label10]
  %temp42$87 = phi i32* [null, %label5], [%temp42$120, %label10]
  %temp41$88 = phi i32 [0, %label5], [%temp41$119, %label10]
  %temp40$89 = phi i32 [0, %label5], [%temp40$121, %label10]
  %temp39$90 = phi %__list** [null, %label5], [%temp39$114, %label10]
  %temp38$91 = phi %__list* [null, %label5], [%temp38$113, %label10]
  %temp37$92 = phi %__list* [null, %label5], [%temp37$115, %label10]
  %temp36$93 = phi i8* [null, %label5], [%temp36$111, %label10]
  %temp35$94 = phi i32 [%temp35$214, %label5], [0, %label10]
  %__env$95 = phi %__list* [%__env$21, %label5], [%__env$211, %label10]
  %__ctemp18$96 = phi i32 [0, %label5], [%__ctemp18$199, %label10]
  %__ctemp17$97 = phi %__list* [null, %label5], [%__ctemp17$200, %label10]
  %__ctemp16$98 = phi %__clos* [null, %label5], [%__ctemp16$201, %label10]
  %__ctemp15$99 = phi i32 [0, %label5], [%__ctemp15$202, %label10]
  %__ctemp14$100 = phi i32 [0, %label5], [%__ctemp14$146, %label10]
  %__ctemp13$101 = phi i32 [0, %label5], [%__ctemp13$141, %label10]
  %__ctemp12$102 = phi %__list* [null, %label5], [%__ctemp12$125, %label10]
  %__ctemp11$103 = phi %__list* [null, %label5], [%__ctemp11$112, %label10]
  %__ctemp10$104 = phi i32 [%__ctemp10$213, %label5], [%__ctemp10$203, %label10]
  %__ctemp19$105 = bitcast i32 %__ctemp10$104 to i32
  %temp103$106 = bitcast %__list* %__env$95 to %__list*
  %temp104$107 = getelementptr %__list, %__list* %temp103$106, i32 0, i32 1
  %__env$108 = load %__list*, %__list** %temp104$107
  %temp102$109 = bitcast %__list* %__env$108 to %__list*
  %temp105$110 = bitcast i32 %__ctemp19$105 to i32
  ret i32 %temp105$110
label8:
  %temp67$170 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp68$171 = bitcast i32 1 to i32
  %temp69$172 = bitcast %__list* %__env$135 to %__list*
  %temp66$173 = call i32 %temp67$170(i32 %temp68$171, %__list* %temp69$172)
  %__ctemp15$174 = bitcast i32 %temp66$173 to i32
  %__ctemp18$175 = bitcast i32 %__ctemp15$174 to i32
  %temp70$176 = bitcast i32 %__ctemp18$175 to i32
  br label %label10
label9:
  %temp72$150 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp73$151 = bitcast i32 4 to i32
  %temp74$152 = bitcast %__list* %__env$135 to %__list*
  %temp71$153 = call i32 %temp72$150(i32 %temp73$151, %__list* %temp74$152)
  %__ctemp16$154 = inttoptr i32 %temp71$153 to %__clos*
  %temp76$155 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp77$156 = bitcast i32 0 to i32
  %temp78$157 = bitcast %__list* %__env$135 to %__list*
  %temp75$158 = call i32 %temp76$155(i32 %temp77$156, %__list* %temp78$157)
  %__ctemp17$159 = inttoptr i32 %temp75$158 to %__list*
  %temp84$160 = bitcast %__clos* %__ctemp16$154 to %__clos*
  %temp85$161 = getelementptr %__clos, %__clos* %temp84$160, i32 0, i32 1
  %temp83$162 = load i32 ()*, i32 ()** %temp85$161
  %temp80$163 = bitcast i32 ()* %temp83$162 to i32 (%__list*, %__list*)*
  %temp81$164 = bitcast %__list* %__ctemp17$159 to %__list*
  %temp86$165 = bitcast %__clos* %__ctemp16$154 to %__clos*
  %temp87$166 = getelementptr %__clos, %__clos* %temp86$165, i32 0, i32 0
  %temp82$167 = load %__list*, %__list** %temp87$166
  %__ctemp18$168 = call i32 %temp80$163(%__list* %temp81$164, %__list* %temp82$167)
  %temp79$169 = bitcast i32 %__ctemp18$168 to i32
  br label %label10
}

define i32 @main() {
main__entry:
  %temp106$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp106$1 to %__list*
  %temp107$3 = call i8* @malloc(i32 8)
  %__ctemp0$4 = bitcast i8* %temp107$3 to %__list*
  %temp111$5 = bitcast i32 5 to i32
  %temp109$6 = bitcast i32 %temp111$5 to i32
  %temp110$7 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 0
  store i32 %temp109$6, i32* %temp110$7
  %temp108$8 = bitcast i32 %temp109$6 to i32
  %temp115$9 = bitcast i32 0 to i32
  %temp113$10 = inttoptr i32 %temp115$9 to %__list*
  %temp114$11 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 1
  store %__list* %temp113$10, %__list** %temp114$11
  %temp112$12 = bitcast %__list* %temp113$10 to %__list*
  %temp116$13 = call i8* @malloc(i32 8)
  %__ctemp1$14 = bitcast i8* %temp116$13 to %__list*
  %temp120$15 = bitcast i32 4 to i32
  %temp118$16 = bitcast i32 %temp120$15 to i32
  %temp119$17 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 0
  store i32 %temp118$16, i32* %temp119$17
  %temp117$18 = bitcast i32 %temp118$16 to i32
  %temp122$19 = bitcast %__list* %__ctemp0$4 to %__list*
  %temp123$20 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 1
  store %__list* %temp122$19, %__list** %temp123$20
  %temp121$21 = bitcast %__list* %temp122$19 to %__list*
  %temp124$22 = call i8* @malloc(i32 8)
  %__ctemp2$23 = bitcast i8* %temp124$22 to %__list*
  %temp128$24 = bitcast i32 3 to i32
  %temp126$25 = bitcast i32 %temp128$24 to i32
  %temp127$26 = getelementptr %__list, %__list* %__ctemp2$23, i32 0, i32 0
  store i32 %temp126$25, i32* %temp127$26
  %temp125$27 = bitcast i32 %temp126$25 to i32
  %temp130$28 = bitcast %__list* %__ctemp1$14 to %__list*
  %temp131$29 = getelementptr %__list, %__list* %__ctemp2$23, i32 0, i32 1
  store %__list* %temp130$28, %__list** %temp131$29
  %temp129$30 = bitcast %__list* %temp130$28 to %__list*
  %temp132$31 = call i8* @malloc(i32 8)
  %__ctemp3$32 = bitcast i8* %temp132$31 to %__list*
  %temp136$33 = bitcast i32 2 to i32
  %temp134$34 = bitcast i32 %temp136$33 to i32
  %temp135$35 = getelementptr %__list, %__list* %__ctemp3$32, i32 0, i32 0
  store i32 %temp134$34, i32* %temp135$35
  %temp133$36 = bitcast i32 %temp134$34 to i32
  %temp138$37 = bitcast %__list* %__ctemp2$23 to %__list*
  %temp139$38 = getelementptr %__list, %__list* %__ctemp3$32, i32 0, i32 1
  store %__list* %temp138$37, %__list** %temp139$38
  %temp137$39 = bitcast %__list* %temp138$37 to %__list*
  %temp140$40 = call i8* @malloc(i32 8)
  %__ctemp4$41 = bitcast i8* %temp140$40 to %__list*
  %temp144$42 = bitcast i32 1 to i32
  %temp142$43 = bitcast i32 %temp144$42 to i32
  %temp143$44 = getelementptr %__list, %__list* %__ctemp4$41, i32 0, i32 0
  store i32 %temp142$43, i32* %temp143$44
  %temp141$45 = bitcast i32 %temp142$43 to i32
  %temp146$46 = bitcast %__list* %__ctemp3$32 to %__list*
  %temp147$47 = getelementptr %__list, %__list* %__ctemp4$41, i32 0, i32 1
  store %__list* %temp146$46, %__list** %temp147$47
  %temp145$48 = bitcast %__list* %temp146$46 to %__list*
  %temp148$49 = call i8* @malloc(i32 8)
  %__ctemp5$50 = bitcast i8* %temp148$49 to %__list*
  %temp150$51 = bitcast %__list* %__env$2 to %__list*
  %temp151$52 = getelementptr %__list, %__list* %__ctemp5$50, i32 0, i32 1
  store %__list* %temp150$51, %__list** %temp151$52
  %temp149$53 = bitcast %__list* %temp150$51 to %__list*
  %temp155$54 = bitcast %__list* %__ctemp4$41 to %__list*
  %temp153$55 = ptrtoint %__list* %temp155$54 to i32
  %temp154$56 = getelementptr %__list, %__list* %__ctemp5$50, i32 0, i32 0
  store i32 %temp153$55, i32* %temp154$56
  %temp152$57 = bitcast i32 %temp153$55 to i32
  %__env$58 = bitcast %__list* %__ctemp5$50 to %__list*
  %temp156$59 = bitcast %__list* %__env$58 to %__list*
  %temp157$60 = call i8* @malloc(i32 8)
  %find6_clos$61 = bitcast i8* %temp157$60 to %__clos*
  %temp159$62 = bitcast %__list* %__env$58 to %__list*
  %temp160$63 = getelementptr %__clos, %__clos* %find6_clos$61, i32 0, i32 0
  store %__list* %temp159$62, %__list** %temp160$63
  %temp158$64 = bitcast %__list* %temp159$62 to %__list*
  %temp164$65 = bitcast i32 (%__list*, %__list*)* @find6__body to i32 (%__list*, %__list*)*
  %temp162$66 = bitcast i32 (%__list*, %__list*)* %temp164$65 to i32 ()*
  %temp163$67 = getelementptr %__clos, %__clos* %find6_clos$61, i32 0, i32 1
  store i32 ()* %temp162$66, i32 ()** %temp163$67
  %temp161$68 = bitcast i32 ()* %temp162$66 to i32 ()*
  %temp165$69 = call i8* @malloc(i32 8)
  %__ctemp20$70 = bitcast i8* %temp165$69 to %__list*
  %temp167$71 = bitcast %__list* %__env$58 to %__list*
  %temp168$72 = getelementptr %__list, %__list* %__ctemp20$70, i32 0, i32 1
  store %__list* %temp167$71, %__list** %temp168$72
  %temp166$73 = bitcast %__list* %temp167$71 to %__list*
  %temp172$74 = bitcast %__clos* %find6_clos$61 to %__clos*
  %temp170$75 = ptrtoint %__clos* %temp172$74 to i32
  %temp171$76 = getelementptr %__list, %__list* %__ctemp20$70, i32 0, i32 0
  store i32 %temp170$75, i32* %temp171$76
  %temp169$77 = bitcast i32 %temp170$75 to i32
  %__env$78 = bitcast %__list* %__ctemp20$70 to %__list*
  %temp173$79 = bitcast %__list* %__env$78 to %__list*
  %temp175$80 = bitcast %__list* %__env$78 to %__list*
  %temp176$81 = getelementptr %__clos, %__clos* %find6_clos$61, i32 0, i32 0
  store %__list* %temp175$80, %__list** %temp176$81
  %temp174$82 = bitcast %__list* %temp175$80 to %__list*
  %temp178$83 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp179$84 = bitcast i32 0 to i32
  %temp180$85 = bitcast %__list* %__env$78 to %__list*
  %temp177$86 = call i32 %temp178$83(i32 %temp179$84, %__list* %temp180$85)
  %__ctemp21$87 = inttoptr i32 %temp177$86 to %__clos*
  %temp182$88 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp183$89 = bitcast i32 1 to i32
  %temp184$90 = bitcast %__list* %__env$78 to %__list*
  %temp181$91 = call i32 %temp182$88(i32 %temp183$89, %__list* %temp184$90)
  %__ctemp22$92 = inttoptr i32 %temp181$91 to %__list*
  %temp189$93 = bitcast %__clos* %__ctemp21$87 to %__clos*
  %temp190$94 = getelementptr %__clos, %__clos* %temp189$93, i32 0, i32 1
  %temp188$95 = load i32 ()*, i32 ()** %temp190$94
  %temp185$96 = bitcast i32 ()* %temp188$95 to i32 (%__list*, %__list*)*
  %temp186$97 = bitcast %__list* %__ctemp22$92 to %__list*
  %temp191$98 = bitcast %__clos* %__ctemp21$87 to %__clos*
  %temp192$99 = getelementptr %__clos, %__clos* %temp191$98, i32 0, i32 0
  %temp187$100 = load %__list*, %__list** %temp192$99
  %__ctemp23$101 = call i32 %temp185$96(%__list* %temp186$97, %__list* %temp187$100)
  %temp194$102 = bitcast %__list* %__env$78 to %__list*
  %temp195$103 = getelementptr %__list, %__list* %temp194$102, i32 0, i32 1
  %__env$104 = load %__list*, %__list** %temp195$103
  %temp193$105 = bitcast %__list* %__env$104 to %__list*
  %__ctemp24$106 = bitcast i32 %__ctemp23$101 to i32
  %temp197$107 = bitcast %__list* %__env$104 to %__list*
  %temp198$108 = getelementptr %__list, %__list* %temp197$107, i32 0, i32 1
  %__env$109 = load %__list*, %__list** %temp198$108
  %temp196$110 = bitcast %__list* %__env$109 to %__list*
  %temp199$111 = bitcast i32 %__ctemp24$106 to i32
  ret i32 %temp199$111
}
