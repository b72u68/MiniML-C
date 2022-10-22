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
  %__ctemp0$4 = bitcast i8* %temp14$3 to %__pair*
  %temp18$5 = bitcast i32 1 to i32
  %temp16$6 = bitcast i32 %temp18$5 to i32
  %temp17$7 = getelementptr %__pair, %__pair* %__ctemp0$4, i32 0, i32 0
  store i32 %temp16$6, i32* %temp17$7
  %temp15$8 = bitcast i32 %temp16$6 to i32
  %temp22$9 = bitcast i32 2 to i32
  %temp20$10 = bitcast i32 %temp22$9 to i32
  %temp21$11 = getelementptr %__pair, %__pair* %__ctemp0$4, i32 0, i32 1
  store i32 %temp20$10, i32* %temp21$11
  %temp19$12 = bitcast i32 %temp20$10 to i32
  %temp23$13 = call i8* @malloc(i32 8)
  %__ctemp1$14 = bitcast i8* %temp23$13 to %__list*
  %temp27$15 = bitcast %__pair* %__ctemp0$4 to %__pair*
  %temp25$16 = ptrtoint %__pair* %temp27$15 to i32
  %temp26$17 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 0
  store i32 %temp25$16, i32* %temp26$17
  %temp24$18 = bitcast i32 %temp25$16 to i32
  %temp31$19 = bitcast i32 0 to i32
  %temp29$20 = inttoptr i32 %temp31$19 to %__list*
  %temp30$21 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 1
  store %__list* %temp29$20, %__list** %temp30$21
  %temp28$22 = bitcast %__list* %temp29$20 to %__list*
  %temp32$23 = call i8* @malloc(i32 8)
  %__ctemp2$24 = bitcast i8* %temp32$23 to %__list*
  %temp34$25 = bitcast %__list* %__env$2 to %__list*
  %temp35$26 = getelementptr %__list, %__list* %__ctemp2$24, i32 0, i32 1
  store %__list* %temp34$25, %__list** %temp35$26
  %temp33$27 = bitcast %__list* %temp34$25 to %__list*
  %temp39$28 = bitcast %__list* %__ctemp1$14 to %__list*
  %temp37$29 = ptrtoint %__list* %temp39$28 to i32
  %temp38$30 = getelementptr %__list, %__list* %__ctemp2$24, i32 0, i32 0
  store i32 %temp37$29, i32* %temp38$30
  %temp36$31 = bitcast i32 %temp37$29 to i32
  %__env$32 = bitcast %__list* %__ctemp2$24 to %__list*
  %temp40$33 = bitcast %__list* %__env$32 to %__list*
  %temp42$34 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp43$35 = bitcast i32 0 to i32
  %temp44$36 = bitcast %__list* %__env$32 to %__list*
  %temp41$37 = call i32 %temp42$34(i32 %temp43$35, %__list* %temp44$36)
  %__ctemp3$38 = inttoptr i32 %temp41$37 to %__list*
  %temp114$39 = bitcast %__list* %__ctemp3$38 to %__list*
  %temp112$40 = ptrtoint %__list* %temp114$39 to i32
  %temp113$41 = bitcast i32 0 to i32
  %temp111$42 = icmp eq i32 %temp112$40, %temp113$41
  br i1 %temp111$42, label %label5, label %label6
label5:
  %__ctemp4$205 = bitcast i32 0 to i32
  %temp45$206 = bitcast i32 %__ctemp4$205 to i32
  br label %label7
label6:
  %temp46$124 = call i8* @malloc(i32 8)
  %__ctemp5$125 = bitcast i8* %temp46$124 to %__list*
  %temp48$126 = bitcast %__list* %__env$32 to %__list*
  %temp49$127 = getelementptr %__list, %__list* %__ctemp5$125, i32 0, i32 1
  store %__list* %temp48$126, %__list** %temp49$127
  %temp47$128 = bitcast %__list* %temp48$126 to %__list*
  %temp54$129 = bitcast %__list* %__ctemp3$38 to %__list*
  %temp55$130 = getelementptr %__list, %__list* %temp54$129, i32 0, i32 0
  %temp53$131 = load i32, i32* %temp55$130
  %temp51$132 = bitcast i32 %temp53$131 to i32
  %temp52$133 = getelementptr %__list, %__list* %__ctemp5$125, i32 0, i32 0
  store i32 %temp51$132, i32* %temp52$133
  %temp50$134 = bitcast i32 %temp51$132 to i32
  %__env$135 = bitcast %__list* %__ctemp5$125 to %__list*
  %temp56$136 = bitcast %__list* %__env$135 to %__list*
  %temp57$137 = call i8* @malloc(i32 8)
  %__ctemp6$138 = bitcast i8* %temp57$137 to %__list*
  %temp59$139 = bitcast %__list* %__env$135 to %__list*
  %temp60$140 = getelementptr %__list, %__list* %__ctemp6$138, i32 0, i32 1
  store %__list* %temp59$139, %__list** %temp60$140
  %temp58$141 = bitcast %__list* %temp59$139 to %__list*
  %temp65$142 = bitcast %__list* %__ctemp3$38 to %__list*
  %temp66$143 = getelementptr %__list, %__list* %temp65$142, i32 0, i32 1
  %temp64$144 = load %__list*, %__list** %temp66$143
  %temp62$145 = ptrtoint %__list* %temp64$144 to i32
  %temp63$146 = getelementptr %__list, %__list* %__ctemp6$138, i32 0, i32 0
  store i32 %temp62$145, i32* %temp63$146
  %temp61$147 = bitcast i32 %temp62$145 to i32
  %__env$148 = bitcast %__list* %__ctemp6$138 to %__list*
  %temp67$149 = bitcast %__list* %__env$148 to %__list*
  %temp69$150 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp70$151 = bitcast i32 1 to i32
  %temp71$152 = bitcast %__list* %__env$148 to %__list*
  %temp68$153 = call i32 %temp69$150(i32 %temp70$151, %__list* %temp71$152)
  %__ctemp7$154 = inttoptr i32 %temp68$153 to %__pair*
  %temp72$155 = call i8* @malloc(i32 8)
  %__ctemp8$156 = bitcast i8* %temp72$155 to %__list*
  %temp74$157 = bitcast %__list* %__env$148 to %__list*
  %temp75$158 = getelementptr %__list, %__list* %__ctemp8$156, i32 0, i32 1
  store %__list* %temp74$157, %__list** %temp75$158
  %temp73$159 = bitcast %__list* %temp74$157 to %__list*
  %temp80$160 = bitcast %__pair* %__ctemp7$154 to %__pair*
  %temp81$161 = getelementptr %__pair, %__pair* %temp80$160, i32 0, i32 0
  %temp79$162 = load i32, i32* %temp81$161
  %temp77$163 = bitcast i32 %temp79$162 to i32
  %temp78$164 = getelementptr %__list, %__list* %__ctemp8$156, i32 0, i32 0
  store i32 %temp77$163, i32* %temp78$164
  %temp76$165 = bitcast i32 %temp77$163 to i32
  %__env$166 = bitcast %__list* %__ctemp8$156 to %__list*
  %temp82$167 = bitcast %__list* %__env$166 to %__list*
  %temp83$168 = call i8* @malloc(i32 8)
  %__ctemp9$169 = bitcast i8* %temp83$168 to %__list*
  %temp85$170 = bitcast %__list* %__env$166 to %__list*
  %temp86$171 = getelementptr %__list, %__list* %__ctemp9$169, i32 0, i32 1
  store %__list* %temp85$170, %__list** %temp86$171
  %temp84$172 = bitcast %__list* %temp85$170 to %__list*
  %temp91$173 = bitcast %__pair* %__ctemp7$154 to %__pair*
  %temp92$174 = getelementptr %__pair, %__pair* %temp91$173, i32 0, i32 1
  %temp90$175 = load i32, i32* %temp92$174
  %temp88$176 = bitcast i32 %temp90$175 to i32
  %temp89$177 = getelementptr %__list, %__list* %__ctemp9$169, i32 0, i32 0
  store i32 %temp88$176, i32* %temp89$177
  %temp87$178 = bitcast i32 %temp88$176 to i32
  %__env$179 = bitcast %__list* %__ctemp9$169 to %__list*
  %temp93$180 = bitcast %__list* %__env$179 to %__list*
  %temp95$181 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp96$182 = bitcast i32 1 to i32
  %temp97$183 = bitcast %__list* %__env$179 to %__list*
  %temp94$184 = call i32 %temp95$181(i32 %temp96$182, %__list* %temp97$183)
  %__ctemp10$185 = bitcast i32 %temp94$184 to i32
  %__ctemp11$186 = bitcast i32 %__ctemp10$185 to i32
  %temp99$187 = bitcast %__list* %__env$179 to %__list*
  %temp100$188 = getelementptr %__list, %__list* %temp99$187, i32 0, i32 1
  %__env$189 = load %__list*, %__list** %temp100$188
  %temp98$190 = bitcast %__list* %__env$189 to %__list*
  %temp102$191 = bitcast %__list* %__env$189 to %__list*
  %temp103$192 = getelementptr %__list, %__list* %temp102$191, i32 0, i32 1
  %__env$193 = load %__list*, %__list** %temp103$192
  %temp101$194 = bitcast %__list* %__env$193 to %__list*
  %__ctemp4$195 = bitcast i32 %__ctemp11$186 to i32
  %temp104$196 = bitcast i32 %__ctemp4$195 to i32
  %temp106$197 = bitcast %__list* %__env$193 to %__list*
  %temp107$198 = getelementptr %__list, %__list* %temp106$197, i32 0, i32 1
  %__env$199 = load %__list*, %__list** %temp107$198
  %temp105$200 = bitcast %__list* %__env$199 to %__list*
  %temp109$201 = bitcast %__list* %__env$199 to %__list*
  %temp110$202 = getelementptr %__list, %__list* %temp109$201, i32 0, i32 1
  %__env$203 = load %__list*, %__list** %temp110$202
  %temp108$204 = bitcast %__list* %__env$203 to %__list*
  br label %label7
label7:
  %temp99$43 = phi %__list* [null, %label5], [%temp99$187, %label6]
  %temp98$44 = phi %__list* [null, %label5], [%temp98$190, %label6]
  %temp97$45 = phi %__list* [null, %label5], [%temp97$183, %label6]
  %temp96$46 = phi i32 [0, %label5], [%temp96$182, %label6]
  %temp95$47 = phi i32 (i32, %__list*)* [null, %label5], [%temp95$181, %label6]
  %temp94$48 = phi i32 [0, %label5], [%temp94$184, %label6]
  %temp93$49 = phi %__list* [null, %label5], [%temp93$180, %label6]
  %temp92$50 = phi i32* [null, %label5], [%temp92$174, %label6]
  %temp91$51 = phi %__pair* [null, %label5], [%temp91$173, %label6]
  %temp90$52 = phi i32 [0, %label5], [%temp90$175, %label6]
  %temp89$53 = phi i32* [null, %label5], [%temp89$177, %label6]
  %temp88$54 = phi i32 [0, %label5], [%temp88$176, %label6]
  %temp87$55 = phi i32 [0, %label5], [%temp87$178, %label6]
  %temp86$56 = phi %__list** [null, %label5], [%temp86$171, %label6]
  %temp85$57 = phi %__list* [null, %label5], [%temp85$170, %label6]
  %temp84$58 = phi %__list* [null, %label5], [%temp84$172, %label6]
  %temp83$59 = phi i8* [null, %label5], [%temp83$168, %label6]
  %temp82$60 = phi %__list* [null, %label5], [%temp82$167, %label6]
  %temp81$61 = phi i32* [null, %label5], [%temp81$161, %label6]
  %temp80$62 = phi %__pair* [null, %label5], [%temp80$160, %label6]
  %temp79$63 = phi i32 [0, %label5], [%temp79$162, %label6]
  %temp78$64 = phi i32* [null, %label5], [%temp78$164, %label6]
  %temp77$65 = phi i32 [0, %label5], [%temp77$163, %label6]
  %temp76$66 = phi i32 [0, %label5], [%temp76$165, %label6]
  %temp75$67 = phi %__list** [null, %label5], [%temp75$158, %label6]
  %temp74$68 = phi %__list* [null, %label5], [%temp74$157, %label6]
  %temp73$69 = phi %__list* [null, %label5], [%temp73$159, %label6]
  %temp72$70 = phi i8* [null, %label5], [%temp72$155, %label6]
  %temp71$71 = phi %__list* [null, %label5], [%temp71$152, %label6]
  %temp70$72 = phi i32 [0, %label5], [%temp70$151, %label6]
  %temp69$73 = phi i32 (i32, %__list*)* [null, %label5], [%temp69$150, %label6]
  %temp68$74 = phi i32 [0, %label5], [%temp68$153, %label6]
  %temp67$75 = phi %__list* [null, %label5], [%temp67$149, %label6]
  %temp66$76 = phi %__list** [null, %label5], [%temp66$143, %label6]
  %temp65$77 = phi %__list* [null, %label5], [%temp65$142, %label6]
  %temp64$78 = phi %__list* [null, %label5], [%temp64$144, %label6]
  %temp63$79 = phi i32* [null, %label5], [%temp63$146, %label6]
  %temp62$80 = phi i32 [0, %label5], [%temp62$145, %label6]
  %temp61$81 = phi i32 [0, %label5], [%temp61$147, %label6]
  %temp60$82 = phi %__list** [null, %label5], [%temp60$140, %label6]
  %temp59$83 = phi %__list* [null, %label5], [%temp59$139, %label6]
  %temp58$84 = phi %__list* [null, %label5], [%temp58$141, %label6]
  %temp57$85 = phi i8* [null, %label5], [%temp57$137, %label6]
  %temp56$86 = phi %__list* [null, %label5], [%temp56$136, %label6]
  %temp55$87 = phi i32* [null, %label5], [%temp55$130, %label6]
  %temp54$88 = phi %__list* [null, %label5], [%temp54$129, %label6]
  %temp53$89 = phi i32 [0, %label5], [%temp53$131, %label6]
  %temp52$90 = phi i32* [null, %label5], [%temp52$133, %label6]
  %temp51$91 = phi i32 [0, %label5], [%temp51$132, %label6]
  %temp50$92 = phi i32 [0, %label5], [%temp50$134, %label6]
  %temp49$93 = phi %__list** [null, %label5], [%temp49$127, %label6]
  %temp48$94 = phi %__list* [null, %label5], [%temp48$126, %label6]
  %temp47$95 = phi %__list* [null, %label5], [%temp47$128, %label6]
  %temp46$96 = phi i8* [null, %label5], [%temp46$124, %label6]
  %temp45$97 = phi i32 [%temp45$206, %label5], [0, %label6]
  %temp110$98 = phi %__list** [null, %label5], [%temp110$202, %label6]
  %temp109$99 = phi %__list* [null, %label5], [%temp109$201, %label6]
  %temp108$100 = phi %__list* [null, %label5], [%temp108$204, %label6]
  %temp107$101 = phi %__list** [null, %label5], [%temp107$198, %label6]
  %temp106$102 = phi %__list* [null, %label5], [%temp106$197, %label6]
  %temp105$103 = phi %__list* [null, %label5], [%temp105$200, %label6]
  %temp104$104 = phi i32 [0, %label5], [%temp104$196, %label6]
  %temp103$105 = phi %__list** [null, %label5], [%temp103$192, %label6]
  %temp102$106 = phi %__list* [null, %label5], [%temp102$191, %label6]
  %temp101$107 = phi %__list* [null, %label5], [%temp101$194, %label6]
  %temp100$108 = phi %__list** [null, %label5], [%temp100$188, %label6]
  %__env$109 = phi %__list* [%__env$32, %label5], [%__env$203, %label6]
  %__ctemp9$110 = phi %__list* [null, %label5], [%__ctemp9$169, %label6]
  %__ctemp8$111 = phi %__list* [null, %label5], [%__ctemp8$156, %label6]
  %__ctemp7$112 = phi %__pair* [null, %label5], [%__ctemp7$154, %label6]
  %__ctemp6$113 = phi %__list* [null, %label5], [%__ctemp6$138, %label6]
  %__ctemp5$114 = phi %__list* [null, %label5], [%__ctemp5$125, %label6]
  %__ctemp4$115 = phi i32 [%__ctemp4$205, %label5], [%__ctemp4$195, %label6]
  %__ctemp11$116 = phi i32 [0, %label5], [%__ctemp11$186, %label6]
  %__ctemp10$117 = phi i32 [0, %label5], [%__ctemp10$185, %label6]
  %__ctemp12$118 = bitcast i32 %__ctemp4$115 to i32
  %temp116$119 = bitcast %__list* %__env$109 to %__list*
  %temp117$120 = getelementptr %__list, %__list* %temp116$119, i32 0, i32 1
  %__env$121 = load %__list*, %__list** %temp117$120
  %temp115$122 = bitcast %__list* %__env$121 to %__list*
  %temp118$123 = bitcast i32 %__ctemp12$118 to i32
  ret i32 %temp118$123
}
