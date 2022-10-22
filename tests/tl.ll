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
  %temp18$5 = bitcast i32 2 to i32
  %temp16$6 = bitcast i32 %temp18$5 to i32
  %temp17$7 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 0
  store i32 %temp16$6, i32* %temp17$7
  %temp15$8 = bitcast i32 %temp16$6 to i32
  %temp22$9 = bitcast i32 0 to i32
  %temp20$10 = inttoptr i32 %temp22$9 to %__list*
  %temp21$11 = getelementptr %__list, %__list* %__ctemp0$4, i32 0, i32 1
  store %__list* %temp20$10, %__list** %temp21$11
  %temp19$12 = bitcast %__list* %temp20$10 to %__list*
  %temp23$13 = call i8* @malloc(i32 8)
  %__ctemp1$14 = bitcast i8* %temp23$13 to %__list*
  %temp27$15 = bitcast i32 1 to i32
  %temp25$16 = bitcast i32 %temp27$15 to i32
  %temp26$17 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 0
  store i32 %temp25$16, i32* %temp26$17
  %temp24$18 = bitcast i32 %temp25$16 to i32
  %temp29$19 = bitcast %__list* %__ctemp0$4 to %__list*
  %temp30$20 = getelementptr %__list, %__list* %__ctemp1$14, i32 0, i32 1
  store %__list* %temp29$19, %__list** %temp30$20
  %temp28$21 = bitcast %__list* %temp29$19 to %__list*
  %temp31$22 = call i8* @malloc(i32 8)
  %__ctemp2$23 = bitcast i8* %temp31$22 to %__list*
  %temp33$24 = bitcast %__list* %__env$2 to %__list*
  %temp34$25 = getelementptr %__list, %__list* %__ctemp2$23, i32 0, i32 1
  store %__list* %temp33$24, %__list** %temp34$25
  %temp32$26 = bitcast %__list* %temp33$24 to %__list*
  %temp38$27 = bitcast %__list* %__ctemp1$14 to %__list*
  %temp36$28 = ptrtoint %__list* %temp38$27 to i32
  %temp37$29 = getelementptr %__list, %__list* %__ctemp2$23, i32 0, i32 0
  store i32 %temp36$28, i32* %temp37$29
  %temp35$30 = bitcast i32 %temp36$28 to i32
  %__env$31 = bitcast %__list* %__ctemp2$23 to %__list*
  %temp39$32 = bitcast %__list* %__env$31 to %__list*
  %temp41$33 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp42$34 = bitcast i32 0 to i32
  %temp43$35 = bitcast %__list* %__env$31 to %__list*
  %temp40$36 = call i32 %temp41$33(i32 %temp42$34, %__list* %temp43$35)
  %__ctemp3$37 = inttoptr i32 %temp40$36 to %__list*
  %temp119$38 = bitcast %__list* %__ctemp3$37 to %__list*
  %temp117$39 = ptrtoint %__list* %temp119$38 to i32
  %temp118$40 = bitcast i32 0 to i32
  %temp116$41 = icmp eq i32 %temp117$39, %temp118$40
  br i1 %temp116$41, label %label5, label %label6
label10:
  %temp99$207 = phi %__list* [null, %label8], [%temp99$200, %label9]
  %temp98$208 = phi i32 [0, %label8], [%temp98$196, %label9]
  %temp97$209 = phi %__list* [null, %label8], [%temp97$192, %label9]
  %temp96$210 = phi i32 [0, %label8], [%temp96$191, %label9]
  %temp95$211 = phi i32 (i32, %__list*)* [null, %label8], [%temp95$190, %label9]
  %temp94$212 = phi i32 [0, %label8], [%temp94$193, %label9]
  %temp93$213 = phi %__list* [null, %label8], [%temp93$189, %label9]
  %temp92$214 = phi %__list** [null, %label8], [%temp92$183, %label9]
  %temp91$215 = phi %__list* [null, %label8], [%temp91$182, %label9]
  %temp90$216 = phi %__list* [null, %label8], [%temp90$184, %label9]
  %temp89$217 = phi i32* [null, %label8], [%temp89$186, %label9]
  %temp88$218 = phi i32 [0, %label8], [%temp88$185, %label9]
  %temp87$219 = phi i32 [0, %label8], [%temp87$187, %label9]
  %temp86$220 = phi %__list** [null, %label8], [%temp86$180, %label9]
  %temp85$221 = phi %__list* [null, %label8], [%temp85$179, %label9]
  %temp84$222 = phi %__list* [null, %label8], [%temp84$181, %label9]
  %temp83$223 = phi i8* [null, %label8], [%temp83$177, %label9]
  %temp82$224 = phi %__list* [null, %label8], [%temp82$176, %label9]
  %temp81$225 = phi i32* [null, %label8], [%temp81$170, %label9]
  %temp80$226 = phi %__list* [null, %label8], [%temp80$169, %label9]
  %temp79$227 = phi i32 [0, %label8], [%temp79$171, %label9]
  %temp78$228 = phi i32* [null, %label8], [%temp78$173, %label9]
  %temp77$229 = phi i32 [0, %label8], [%temp77$172, %label9]
  %temp76$230 = phi i32 [0, %label8], [%temp76$174, %label9]
  %temp75$231 = phi %__list** [null, %label8], [%temp75$167, %label9]
  %temp74$232 = phi %__list* [null, %label8], [%temp74$166, %label9]
  %temp73$233 = phi %__list* [null, %label8], [%temp73$168, %label9]
  %temp72$234 = phi i8* [null, %label8], [%temp72$164, %label9]
  %temp71$235 = phi i32 [%temp71$206, %label8], [0, %label9]
  %temp104$236 = phi %__list** [null, %label8], [%temp104$202, %label9]
  %temp103$237 = phi %__list* [null, %label8], [%temp103$201, %label9]
  %temp102$238 = phi %__list* [null, %label8], [%temp102$204, %label9]
  %temp101$239 = phi %__list** [null, %label8], [%temp101$198, %label9]
  %temp100$240 = phi %__list* [null, %label8], [%temp100$197, %label9]
  %__env$241 = phi %__list* [%__env$153, %label8], [%__env$203, %label9]
  %__ctemp9$242 = phi %__list* [null, %label8], [%__ctemp9$165, %label9]
  %__ctemp8$243 = phi i32 [%__ctemp8$205, %label8], [%__ctemp8$195, %label9]
  %__ctemp11$244 = phi i32 [0, %label8], [%__ctemp11$194, %label9]
  %__ctemp10$245 = phi %__list* [null, %label8], [%__ctemp10$178, %label9]
  %__ctemp4$246 = bitcast i32 %__ctemp8$243 to i32
  %temp109$247 = bitcast i32 %__ctemp4$246 to i32
  %temp111$248 = bitcast %__list* %__env$241 to %__list*
  %temp112$249 = getelementptr %__list, %__list* %temp111$248, i32 0, i32 1
  %__env$250 = load %__list*, %__list** %temp112$249
  %temp110$251 = bitcast %__list* %__env$250 to %__list*
  %temp114$252 = bitcast %__list* %__env$250 to %__list*
  %temp115$253 = getelementptr %__list, %__list* %temp114$252, i32 0, i32 1
  %__env$254 = load %__list*, %__list** %temp115$253
  %temp113$255 = bitcast %__list* %__env$254 to %__list*
  br label %label7
label5:
  %__ctemp4$256 = bitcast i32 0 to i32
  %temp44$257 = bitcast i32 %__ctemp4$256 to i32
  br label %label7
label6:
  %temp45$129 = call i8* @malloc(i32 8)
  %__ctemp5$130 = bitcast i8* %temp45$129 to %__list*
  %temp47$131 = bitcast %__list* %__env$31 to %__list*
  %temp48$132 = getelementptr %__list, %__list* %__ctemp5$130, i32 0, i32 1
  store %__list* %temp47$131, %__list** %temp48$132
  %temp46$133 = bitcast %__list* %temp47$131 to %__list*
  %temp53$134 = bitcast %__list* %__ctemp3$37 to %__list*
  %temp54$135 = getelementptr %__list, %__list* %temp53$134, i32 0, i32 0
  %temp52$136 = load i32, i32* %temp54$135
  %temp50$137 = bitcast i32 %temp52$136 to i32
  %temp51$138 = getelementptr %__list, %__list* %__ctemp5$130, i32 0, i32 0
  store i32 %temp50$137, i32* %temp51$138
  %temp49$139 = bitcast i32 %temp50$137 to i32
  %__env$140 = bitcast %__list* %__ctemp5$130 to %__list*
  %temp55$141 = bitcast %__list* %__env$140 to %__list*
  %temp56$142 = call i8* @malloc(i32 8)
  %__ctemp6$143 = bitcast i8* %temp56$142 to %__list*
  %temp58$144 = bitcast %__list* %__env$140 to %__list*
  %temp59$145 = getelementptr %__list, %__list* %__ctemp6$143, i32 0, i32 1
  store %__list* %temp58$144, %__list** %temp59$145
  %temp57$146 = bitcast %__list* %temp58$144 to %__list*
  %temp64$147 = bitcast %__list* %__ctemp3$37 to %__list*
  %temp65$148 = getelementptr %__list, %__list* %temp64$147, i32 0, i32 1
  %temp63$149 = load %__list*, %__list** %temp65$148
  %temp61$150 = ptrtoint %__list* %temp63$149 to i32
  %temp62$151 = getelementptr %__list, %__list* %__ctemp6$143, i32 0, i32 0
  store i32 %temp61$150, i32* %temp62$151
  %temp60$152 = bitcast i32 %temp61$150 to i32
  %__env$153 = bitcast %__list* %__ctemp6$143 to %__list*
  %temp66$154 = bitcast %__list* %__env$153 to %__list*
  %temp68$155 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp69$156 = bitcast i32 0 to i32
  %temp70$157 = bitcast %__list* %__env$153 to %__list*
  %temp67$158 = call i32 %temp68$155(i32 %temp69$156, %__list* %temp70$157)
  %__ctemp7$159 = inttoptr i32 %temp67$158 to %__list*
  %temp108$160 = bitcast %__list* %__ctemp7$159 to %__list*
  %temp106$161 = ptrtoint %__list* %temp108$160 to i32
  %temp107$162 = bitcast i32 0 to i32
  %temp105$163 = icmp eq i32 %temp106$161, %temp107$162
  br i1 %temp105$163, label %label8, label %label9
label7:
  %temp99$42 = phi %__list* [null, %label5], [%temp99$207, %label10]
  %temp98$43 = phi i32 [0, %label5], [%temp98$208, %label10]
  %temp97$44 = phi %__list* [null, %label5], [%temp97$209, %label10]
  %temp96$45 = phi i32 [0, %label5], [%temp96$210, %label10]
  %temp95$46 = phi i32 (i32, %__list*)* [null, %label5], [%temp95$211, %label10]
  %temp94$47 = phi i32 [0, %label5], [%temp94$212, %label10]
  %temp93$48 = phi %__list* [null, %label5], [%temp93$213, %label10]
  %temp92$49 = phi %__list** [null, %label5], [%temp92$214, %label10]
  %temp91$50 = phi %__list* [null, %label5], [%temp91$215, %label10]
  %temp90$51 = phi %__list* [null, %label5], [%temp90$216, %label10]
  %temp89$52 = phi i32* [null, %label5], [%temp89$217, %label10]
  %temp88$53 = phi i32 [0, %label5], [%temp88$218, %label10]
  %temp87$54 = phi i32 [0, %label5], [%temp87$219, %label10]
  %temp86$55 = phi %__list** [null, %label5], [%temp86$220, %label10]
  %temp85$56 = phi %__list* [null, %label5], [%temp85$221, %label10]
  %temp84$57 = phi %__list* [null, %label5], [%temp84$222, %label10]
  %temp83$58 = phi i8* [null, %label5], [%temp83$223, %label10]
  %temp82$59 = phi %__list* [null, %label5], [%temp82$224, %label10]
  %temp81$60 = phi i32* [null, %label5], [%temp81$225, %label10]
  %temp80$61 = phi %__list* [null, %label5], [%temp80$226, %label10]
  %temp79$62 = phi i32 [0, %label5], [%temp79$227, %label10]
  %temp78$63 = phi i32* [null, %label5], [%temp78$228, %label10]
  %temp77$64 = phi i32 [0, %label5], [%temp77$229, %label10]
  %temp76$65 = phi i32 [0, %label5], [%temp76$230, %label10]
  %temp75$66 = phi %__list** [null, %label5], [%temp75$231, %label10]
  %temp74$67 = phi %__list* [null, %label5], [%temp74$232, %label10]
  %temp73$68 = phi %__list* [null, %label5], [%temp73$233, %label10]
  %temp72$69 = phi i8* [null, %label5], [%temp72$234, %label10]
  %temp71$70 = phi i32 [0, %label5], [%temp71$235, %label10]
  %temp70$71 = phi %__list* [null, %label5], [%temp70$157, %label10]
  %temp69$72 = phi i32 [0, %label5], [%temp69$156, %label10]
  %temp68$73 = phi i32 (i32, %__list*)* [null, %label5], [%temp68$155, %label10]
  %temp67$74 = phi i32 [0, %label5], [%temp67$158, %label10]
  %temp66$75 = phi %__list* [null, %label5], [%temp66$154, %label10]
  %temp65$76 = phi %__list** [null, %label5], [%temp65$148, %label10]
  %temp64$77 = phi %__list* [null, %label5], [%temp64$147, %label10]
  %temp63$78 = phi %__list* [null, %label5], [%temp63$149, %label10]
  %temp62$79 = phi i32* [null, %label5], [%temp62$151, %label10]
  %temp61$80 = phi i32 [0, %label5], [%temp61$150, %label10]
  %temp60$81 = phi i32 [0, %label5], [%temp60$152, %label10]
  %temp59$82 = phi %__list** [null, %label5], [%temp59$145, %label10]
  %temp58$83 = phi %__list* [null, %label5], [%temp58$144, %label10]
  %temp57$84 = phi %__list* [null, %label5], [%temp57$146, %label10]
  %temp56$85 = phi i8* [null, %label5], [%temp56$142, %label10]
  %temp55$86 = phi %__list* [null, %label5], [%temp55$141, %label10]
  %temp54$87 = phi i32* [null, %label5], [%temp54$135, %label10]
  %temp53$88 = phi %__list* [null, %label5], [%temp53$134, %label10]
  %temp52$89 = phi i32 [0, %label5], [%temp52$136, %label10]
  %temp51$90 = phi i32* [null, %label5], [%temp51$138, %label10]
  %temp50$91 = phi i32 [0, %label5], [%temp50$137, %label10]
  %temp49$92 = phi i32 [0, %label5], [%temp49$139, %label10]
  %temp48$93 = phi %__list** [null, %label5], [%temp48$132, %label10]
  %temp47$94 = phi %__list* [null, %label5], [%temp47$131, %label10]
  %temp46$95 = phi %__list* [null, %label5], [%temp46$133, %label10]
  %temp45$96 = phi i8* [null, %label5], [%temp45$129, %label10]
  %temp44$97 = phi i32 [%temp44$257, %label5], [0, %label10]
  %temp115$98 = phi %__list** [null, %label5], [%temp115$253, %label10]
  %temp114$99 = phi %__list* [null, %label5], [%temp114$252, %label10]
  %temp113$100 = phi %__list* [null, %label5], [%temp113$255, %label10]
  %temp112$101 = phi %__list** [null, %label5], [%temp112$249, %label10]
  %temp111$102 = phi %__list* [null, %label5], [%temp111$248, %label10]
  %temp110$103 = phi %__list* [null, %label5], [%temp110$251, %label10]
  %temp109$104 = phi i32 [0, %label5], [%temp109$247, %label10]
  %temp108$105 = phi %__list* [null, %label5], [%temp108$160, %label10]
  %temp107$106 = phi i32 [0, %label5], [%temp107$162, %label10]
  %temp106$107 = phi i32 [0, %label5], [%temp106$161, %label10]
  %temp105$108 = phi i1 [0, %label5], [%temp105$163, %label10]
  %temp104$109 = phi %__list** [null, %label5], [%temp104$236, %label10]
  %temp103$110 = phi %__list* [null, %label5], [%temp103$237, %label10]
  %temp102$111 = phi %__list* [null, %label5], [%temp102$238, %label10]
  %temp101$112 = phi %__list** [null, %label5], [%temp101$239, %label10]
  %temp100$113 = phi %__list* [null, %label5], [%temp100$240, %label10]
  %__env$114 = phi %__list* [%__env$31, %label5], [%__env$254, %label10]
  %__ctemp9$115 = phi %__list* [null, %label5], [%__ctemp9$242, %label10]
  %__ctemp8$116 = phi i32 [0, %label5], [%__ctemp8$243, %label10]
  %__ctemp7$117 = phi %__list* [null, %label5], [%__ctemp7$159, %label10]
  %__ctemp6$118 = phi %__list* [null, %label5], [%__ctemp6$143, %label10]
  %__ctemp5$119 = phi %__list* [null, %label5], [%__ctemp5$130, %label10]
  %__ctemp4$120 = phi i32 [%__ctemp4$256, %label5], [%__ctemp4$246, %label10]
  %__ctemp11$121 = phi i32 [0, %label5], [%__ctemp11$244, %label10]
  %__ctemp10$122 = phi %__list* [null, %label5], [%__ctemp10$245, %label10]
  %__ctemp12$123 = bitcast i32 %__ctemp4$120 to i32
  %temp121$124 = bitcast %__list* %__env$114 to %__list*
  %temp122$125 = getelementptr %__list, %__list* %temp121$124, i32 0, i32 1
  %__env$126 = load %__list*, %__list** %temp122$125
  %temp120$127 = bitcast %__list* %__env$126 to %__list*
  %temp123$128 = bitcast i32 %__ctemp12$123 to i32
  ret i32 %temp123$128
label8:
  %__ctemp8$205 = bitcast i32 0 to i32
  %temp71$206 = bitcast i32 %__ctemp8$205 to i32
  br label %label10
label9:
  %temp72$164 = call i8* @malloc(i32 8)
  %__ctemp9$165 = bitcast i8* %temp72$164 to %__list*
  %temp74$166 = bitcast %__list* %__env$153 to %__list*
  %temp75$167 = getelementptr %__list, %__list* %__ctemp9$165, i32 0, i32 1
  store %__list* %temp74$166, %__list** %temp75$167
  %temp73$168 = bitcast %__list* %temp74$166 to %__list*
  %temp80$169 = bitcast %__list* %__ctemp7$159 to %__list*
  %temp81$170 = getelementptr %__list, %__list* %temp80$169, i32 0, i32 0
  %temp79$171 = load i32, i32* %temp81$170
  %temp77$172 = bitcast i32 %temp79$171 to i32
  %temp78$173 = getelementptr %__list, %__list* %__ctemp9$165, i32 0, i32 0
  store i32 %temp77$172, i32* %temp78$173
  %temp76$174 = bitcast i32 %temp77$172 to i32
  %__env$175 = bitcast %__list* %__ctemp9$165 to %__list*
  %temp82$176 = bitcast %__list* %__env$175 to %__list*
  %temp83$177 = call i8* @malloc(i32 8)
  %__ctemp10$178 = bitcast i8* %temp83$177 to %__list*
  %temp85$179 = bitcast %__list* %__env$175 to %__list*
  %temp86$180 = getelementptr %__list, %__list* %__ctemp10$178, i32 0, i32 1
  store %__list* %temp85$179, %__list** %temp86$180
  %temp84$181 = bitcast %__list* %temp85$179 to %__list*
  %temp91$182 = bitcast %__list* %__ctemp7$159 to %__list*
  %temp92$183 = getelementptr %__list, %__list* %temp91$182, i32 0, i32 1
  %temp90$184 = load %__list*, %__list** %temp92$183
  %temp88$185 = ptrtoint %__list* %temp90$184 to i32
  %temp89$186 = getelementptr %__list, %__list* %__ctemp10$178, i32 0, i32 0
  store i32 %temp88$185, i32* %temp89$186
  %temp87$187 = bitcast i32 %temp88$185 to i32
  %__env$188 = bitcast %__list* %__ctemp10$178 to %__list*
  %temp93$189 = bitcast %__list* %__env$188 to %__list*
  %temp95$190 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp96$191 = bitcast i32 1 to i32
  %temp97$192 = bitcast %__list* %__env$188 to %__list*
  %temp94$193 = call i32 %temp95$190(i32 %temp96$191, %__list* %temp97$192)
  %__ctemp11$194 = bitcast i32 %temp94$193 to i32
  %__ctemp8$195 = bitcast i32 %__ctemp11$194 to i32
  %temp98$196 = bitcast i32 %__ctemp8$195 to i32
  %temp100$197 = bitcast %__list* %__env$188 to %__list*
  %temp101$198 = getelementptr %__list, %__list* %temp100$197, i32 0, i32 1
  %__env$199 = load %__list*, %__list** %temp101$198
  %temp99$200 = bitcast %__list* %__env$199 to %__list*
  %temp103$201 = bitcast %__list* %__env$199 to %__list*
  %temp104$202 = getelementptr %__list, %__list* %temp103$201, i32 0, i32 1
  %__env$203 = load %__list*, %__list** %temp104$202
  %temp102$204 = bitcast %__list* %__env$203 to %__list*
  br label %label10
}
