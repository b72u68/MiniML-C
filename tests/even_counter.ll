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

define i32 @__fun66__body(i32 %y, %__list* %__env) {
__fun66__body__entry:
  %temp13$1 = call i8* @malloc(i32 8)
  %__ctemp67$2 = bitcast i8* %temp13$1 to %__list*
  %temp15$3 = bitcast %__list* %__env to %__list*
  %temp16$4 = getelementptr %__list, %__list* %__ctemp67$2, i32 0, i32 1
  store %__list* %temp15$3, %__list** %temp16$4
  %temp14$5 = bitcast %__list* %temp15$3 to %__list*
  %temp20$6 = bitcast i32 %y to i32
  %temp18$7 = bitcast i32 %temp20$6 to i32
  %temp19$8 = getelementptr %__list, %__list* %__ctemp67$2, i32 0, i32 0
  store i32 %temp18$7, i32* %temp19$8
  %temp17$9 = bitcast i32 %temp18$7 to i32
  %__env$10 = bitcast %__list* %__ctemp67$2 to %__list*
  %temp21$11 = bitcast %__list* %__env$10 to %__list*
  %temp23$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp24$13 = bitcast i32 1 to i32
  %temp25$14 = bitcast %__list* %__env$10 to %__list*
  %temp22$15 = call i32 %temp23$12(i32 %temp24$13, %__list* %temp25$14)
  %__ctemp68$16 = bitcast i32 %temp22$15 to i32
  %temp27$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp28$18 = bitcast i32 0 to i32
  %temp29$19 = bitcast %__list* %__env$10 to %__list*
  %temp26$20 = call i32 %temp27$17(i32 %temp28$18, %__list* %temp29$19)
  %__ctemp69$21 = bitcast i32 %temp26$20 to i32
  %temp31$22 = bitcast i32 %__ctemp68$16 to i32
  %temp32$23 = bitcast i32 %__ctemp69$21 to i32
  %temp30$24 = add i32 %temp31$22, %temp32$23
  ret i32 %temp30$24
}

define %__clos* @__fun64__body(i32 %x, %__list* %__env) {
__fun64__body__entry:
  %temp33$1 = call i8* @malloc(i32 8)
  %__ctemp65$2 = bitcast i8* %temp33$1 to %__list*
  %temp35$3 = bitcast %__list* %__env to %__list*
  %temp36$4 = getelementptr %__list, %__list* %__ctemp65$2, i32 0, i32 1
  store %__list* %temp35$3, %__list** %temp36$4
  %temp34$5 = bitcast %__list* %temp35$3 to %__list*
  %temp40$6 = bitcast i32 %x to i32
  %temp38$7 = bitcast i32 %temp40$6 to i32
  %temp39$8 = getelementptr %__list, %__list* %__ctemp65$2, i32 0, i32 0
  store i32 %temp38$7, i32* %temp39$8
  %temp37$9 = bitcast i32 %temp38$7 to i32
  %__env$10 = bitcast %__list* %__ctemp65$2 to %__list*
  %temp41$11 = bitcast %__list* %__env$10 to %__list*
  %temp42$12 = call i8* @malloc(i32 8)
  %__fun66_clos$13 = bitcast i8* %temp42$12 to %__clos*
  %temp44$14 = bitcast %__list* %__env$10 to %__list*
  %temp45$15 = getelementptr %__clos, %__clos* %__fun66_clos$13, i32 0, i32 0
  store %__list* %temp44$14, %__list** %temp45$15
  %temp43$16 = bitcast %__list* %temp44$14 to %__list*
  %temp49$17 = bitcast i32 (i32, %__list*)* @__fun66__body to i32 (i32, %__list*)*
  %temp47$18 = bitcast i32 (i32, %__list*)* %temp49$17 to i32 ()*
  %temp48$19 = getelementptr %__clos, %__clos* %__fun66_clos$13, i32 0, i32 1
  store i32 ()* %temp47$18, i32 ()** %temp48$19
  %temp46$20 = bitcast i32 ()* %temp47$18 to i32 ()*
  %temp50$21 = bitcast %__clos* %__fun66_clos$13 to %__clos*
  ret %__clos* %temp50$21
}

define i32 @__fun57__body(i32 %x, %__list* %__env) {
__fun57__body__entry:
  %temp51$1 = call i8* @malloc(i32 8)
  %__ctemp58$2 = bitcast i8* %temp51$1 to %__list*
  %temp53$3 = bitcast %__list* %__env to %__list*
  %temp54$4 = getelementptr %__list, %__list* %__ctemp58$2, i32 0, i32 1
  store %__list* %temp53$3, %__list** %temp54$4
  %temp52$5 = bitcast %__list* %temp53$3 to %__list*
  %temp58$6 = bitcast i32 %x to i32
  %temp56$7 = bitcast i32 %temp58$6 to i32
  %temp57$8 = getelementptr %__list, %__list* %__ctemp58$2, i32 0, i32 0
  store i32 %temp56$7, i32* %temp57$8
  %temp55$9 = bitcast i32 %temp56$7 to i32
  %__env$10 = bitcast %__list* %__ctemp58$2 to %__list*
  %temp59$11 = bitcast %__list* %__env$10 to %__list*
  %temp61$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp62$13 = bitcast i32 0 to i32
  %temp63$14 = bitcast %__list* %__env$10 to %__list*
  %temp60$15 = call i32 %temp61$12(i32 %temp62$13, %__list* %temp63$14)
  %__ctemp59$16 = bitcast i32 %temp60$15 to i32
  %temp65$17 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp66$18 = bitcast i32 0 to i32
  %temp67$19 = bitcast %__list* %__env$10 to %__list*
  %temp64$20 = call i32 %temp65$17(i32 %temp66$18, %__list* %temp67$19)
  %__ctemp60$21 = bitcast i32 %temp64$20 to i32
  %temp69$22 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp70$23 = bitcast i32 0 to i32
  %temp71$24 = bitcast %__list* %__env$10 to %__list*
  %temp68$25 = call i32 %temp69$22(i32 %temp70$23, %__list* %temp71$24)
  %__ctemp61$26 = bitcast i32 %temp68$25 to i32
  %temp79$27 = bitcast i32 %__ctemp59$16 to i32
  %temp80$28 = bitcast i32 2 to i32
  %temp77$29 = sdiv i32 %temp79$27, %temp80$28
  %temp81$30 = bitcast i32 %__ctemp60$21 to i32
  %temp82$31 = bitcast i32 2 to i32
  %temp78$32 = sdiv i32 %temp81$30, %temp82$31
  %temp75$33 = add i32 %temp77$29, %temp78$32
  %temp76$34 = bitcast i32 %__ctemp61$26 to i32
  %temp74$35 = icmp eq i32 %temp75$33, %temp76$34
  br i1 %temp74$35, label %label7, label %label8
label7:
  %__ctemp62$42 = bitcast i32 1 to i32
  %temp72$43 = bitcast i32 %__ctemp62$42 to i32
  br label %label9
label8:
  %__ctemp62$40 = bitcast i32 0 to i32
  %temp73$41 = bitcast i32 %__ctemp62$40 to i32
  br label %label9
label9:
  %temp73$36 = phi i32 [0, %label7], [%temp73$41, %label8]
  %temp72$37 = phi i32 [%temp72$43, %label7], [0, %label8]
  %__ctemp62$38 = phi i32 [%__ctemp62$42, %label7], [%__ctemp62$40, %label8]
  %temp83$39 = bitcast i32 %__ctemp62$38 to i32
  ret i32 %temp83$39
}

define %__list* @map_helper27__body(%__pair* %args, %__list* %__env) {
map_helper27__body__entry:
  %temp84$1 = call i8* @malloc(i32 8)
  %__ctemp28$2 = bitcast i8* %temp84$1 to %__list*
  %temp86$3 = bitcast %__list* %__env to %__list*
  %temp87$4 = getelementptr %__list, %__list* %__ctemp28$2, i32 0, i32 1
  store %__list* %temp86$3, %__list** %temp87$4
  %temp85$5 = bitcast %__list* %temp86$3 to %__list*
  %temp91$6 = bitcast %__pair* %args to %__pair*
  %temp89$7 = ptrtoint %__pair* %temp91$6 to i32
  %temp90$8 = getelementptr %__list, %__list* %__ctemp28$2, i32 0, i32 0
  store i32 %temp89$7, i32* %temp90$8
  %temp88$9 = bitcast i32 %temp89$7 to i32
  %__env$10 = bitcast %__list* %__ctemp28$2 to %__list*
  %temp92$11 = bitcast %__list* %__env$10 to %__list*
  %temp94$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp95$13 = bitcast i32 0 to i32
  %temp96$14 = bitcast %__list* %__env$10 to %__list*
  %temp93$15 = call i32 %temp94$12(i32 %temp95$13, %__list* %temp96$14)
  %__ctemp29$16 = inttoptr i32 %temp93$15 to %__pair*
  %temp97$17 = call i8* @malloc(i32 8)
  %__ctemp30$18 = bitcast i8* %temp97$17 to %__list*
  %temp99$19 = bitcast %__list* %__env$10 to %__list*
  %temp100$20 = getelementptr %__list, %__list* %__ctemp30$18, i32 0, i32 1
  store %__list* %temp99$19, %__list** %temp100$20
  %temp98$21 = bitcast %__list* %temp99$19 to %__list*
  %temp105$22 = bitcast %__pair* %__ctemp29$16 to %__pair*
  %temp106$23 = getelementptr %__pair, %__pair* %temp105$22, i32 0, i32 0
  %temp104$24 = load i32, i32* %temp106$23
  %temp102$25 = bitcast i32 %temp104$24 to i32
  %temp103$26 = getelementptr %__list, %__list* %__ctemp30$18, i32 0, i32 0
  store i32 %temp102$25, i32* %temp103$26
  %temp101$27 = bitcast i32 %temp102$25 to i32
  %__env$28 = bitcast %__list* %__ctemp30$18 to %__list*
  %temp107$29 = bitcast %__list* %__env$28 to %__list*
  %temp108$30 = call i8* @malloc(i32 8)
  %__ctemp31$31 = bitcast i8* %temp108$30 to %__list*
  %temp110$32 = bitcast %__list* %__env$28 to %__list*
  %temp111$33 = getelementptr %__list, %__list* %__ctemp31$31, i32 0, i32 1
  store %__list* %temp110$32, %__list** %temp111$33
  %temp109$34 = bitcast %__list* %temp110$32 to %__list*
  %temp116$35 = bitcast %__pair* %__ctemp29$16 to %__pair*
  %temp117$36 = getelementptr %__pair, %__pair* %temp116$35, i32 0, i32 1
  %temp115$37 = load i32, i32* %temp117$36
  %temp113$38 = bitcast i32 %temp115$37 to i32
  %temp114$39 = getelementptr %__list, %__list* %__ctemp31$31, i32 0, i32 0
  store i32 %temp113$38, i32* %temp114$39
  %temp112$40 = bitcast i32 %temp113$38 to i32
  %__env$41 = bitcast %__list* %__ctemp31$31 to %__list*
  %temp118$42 = bitcast %__list* %__env$41 to %__list*
  %temp120$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp121$44 = bitcast i32 0 to i32
  %temp122$45 = bitcast %__list* %__env$41 to %__list*
  %temp119$46 = call i32 %temp120$43(i32 %temp121$44, %__list* %temp122$45)
  %__ctemp32$47 = inttoptr i32 %temp119$46 to %__list*
  %temp245$48 = bitcast %__list* %__ctemp32$47 to %__list*
  %temp243$49 = ptrtoint %__list* %temp245$48 to i32
  %temp244$50 = bitcast i32 0 to i32
  %temp242$51 = icmp eq i32 %temp243$49, %temp244$50
  br i1 %temp242$51, label %label11, label %label12
label11:
  %temp124$337 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp125$338 = bitcast i32 1 to i32
  %temp126$339 = bitcast %__list* %__env$41 to %__list*
  %temp123$340 = call i32 %temp124$337(i32 %temp125$338, %__list* %temp126$339)
  %__ctemp33$341 = inttoptr i32 %temp123$340 to %__list*
  %__ctemp34$342 = bitcast %__list* %__ctemp33$341 to %__list*
  %temp127$343 = bitcast %__list* %__ctemp34$342 to %__list*
  br label %label13
label12:
  %temp128$199 = call i8* @malloc(i32 8)
  %__ctemp35$200 = bitcast i8* %temp128$199 to %__list*
  %temp130$201 = bitcast %__list* %__env$41 to %__list*
  %temp131$202 = getelementptr %__list, %__list* %__ctemp35$200, i32 0, i32 1
  store %__list* %temp130$201, %__list** %temp131$202
  %temp129$203 = bitcast %__list* %temp130$201 to %__list*
  %temp136$204 = bitcast %__list* %__ctemp32$47 to %__list*
  %temp137$205 = getelementptr %__list, %__list* %temp136$204, i32 0, i32 0
  %temp135$206 = load i32, i32* %temp137$205
  %temp133$207 = bitcast i32 %temp135$206 to i32
  %temp134$208 = getelementptr %__list, %__list* %__ctemp35$200, i32 0, i32 0
  store i32 %temp133$207, i32* %temp134$208
  %temp132$209 = bitcast i32 %temp133$207 to i32
  %__env$210 = bitcast %__list* %__ctemp35$200 to %__list*
  %temp138$211 = bitcast %__list* %__env$210 to %__list*
  %temp139$212 = call i8* @malloc(i32 8)
  %__ctemp36$213 = bitcast i8* %temp139$212 to %__list*
  %temp141$214 = bitcast %__list* %__env$210 to %__list*
  %temp142$215 = getelementptr %__list, %__list* %__ctemp36$213, i32 0, i32 1
  store %__list* %temp141$214, %__list** %temp142$215
  %temp140$216 = bitcast %__list* %temp141$214 to %__list*
  %temp147$217 = bitcast %__list* %__ctemp32$47 to %__list*
  %temp148$218 = getelementptr %__list, %__list* %temp147$217, i32 0, i32 1
  %temp146$219 = load %__list*, %__list** %temp148$218
  %temp144$220 = ptrtoint %__list* %temp146$219 to i32
  %temp145$221 = getelementptr %__list, %__list* %__ctemp36$213, i32 0, i32 0
  store i32 %temp144$220, i32* %temp145$221
  %temp143$222 = bitcast i32 %temp144$220 to i32
  %__env$223 = bitcast %__list* %__ctemp36$213 to %__list*
  %temp149$224 = bitcast %__list* %__env$223 to %__list*
  %temp151$225 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp152$226 = bitcast i32 7 to i32
  %temp153$227 = bitcast %__list* %__env$223 to %__list*
  %temp150$228 = call i32 %temp151$225(i32 %temp152$226, %__list* %temp153$227)
  %__ctemp37$229 = inttoptr i32 %temp150$228 to %__clos*
  %temp155$230 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp156$231 = bitcast i32 1 to i32
  %temp157$232 = bitcast %__list* %__env$223 to %__list*
  %temp154$233 = call i32 %temp155$230(i32 %temp156$231, %__list* %temp157$232)
  %__ctemp38$234 = bitcast i32 %temp154$233 to i32
  %temp158$235 = call i8* @malloc(i32 8)
  %__ctemp39$236 = bitcast i8* %temp158$235 to %__list*
  %temp160$237 = bitcast %__list* %__env$223 to %__list*
  %temp161$238 = getelementptr %__list, %__list* %__ctemp39$236, i32 0, i32 1
  store %__list* %temp160$237, %__list** %temp161$238
  %temp159$239 = bitcast %__list* %temp160$237 to %__list*
  %temp170$240 = bitcast %__clos* %__ctemp37$229 to %__clos*
  %temp171$241 = getelementptr %__clos, %__clos* %temp170$240, i32 0, i32 1
  %temp169$242 = load i32 ()*, i32 ()** %temp171$241
  %temp166$243 = bitcast i32 ()* %temp169$242 to i32 (i32, %__list*)*
  %temp167$244 = bitcast i32 %__ctemp38$234 to i32
  %temp172$245 = bitcast %__clos* %__ctemp37$229 to %__clos*
  %temp173$246 = getelementptr %__clos, %__clos* %temp172$245, i32 0, i32 0
  %temp168$247 = load %__list*, %__list** %temp173$246
  %temp165$248 = call i32 %temp166$243(i32 %temp167$244, %__list* %temp168$247)
  %temp163$249 = bitcast i32 %temp165$248 to i32
  %temp164$250 = getelementptr %__list, %__list* %__ctemp39$236, i32 0, i32 0
  store i32 %temp163$249, i32* %temp164$250
  %temp162$251 = bitcast i32 %temp163$249 to i32
  %__env$252 = bitcast %__list* %__ctemp39$236 to %__list*
  %temp174$253 = bitcast %__list* %__env$252 to %__list*
  %temp176$254 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp177$255 = bitcast i32 0 to i32
  %temp178$256 = bitcast %__list* %__env$252 to %__list*
  %temp175$257 = call i32 %temp176$254(i32 %temp177$255, %__list* %temp178$256)
  %__ctemp40$258 = bitcast i32 %temp175$257 to i32
  %temp180$259 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp181$260 = bitcast i32 4 to i32
  %temp182$261 = bitcast %__list* %__env$252 to %__list*
  %temp179$262 = call i32 %temp180$259(i32 %temp181$260, %__list* %temp182$261)
  %__ctemp41$263 = inttoptr i32 %temp179$262 to %__list*
  %temp183$264 = call i8* @malloc(i32 8)
  %__ctemp42$265 = bitcast i8* %temp183$264 to %__list*
  %temp187$266 = bitcast i32 %__ctemp40$258 to i32
  %temp185$267 = bitcast i32 %temp187$266 to i32
  %temp186$268 = getelementptr %__list, %__list* %__ctemp42$265, i32 0, i32 0
  store i32 %temp185$267, i32* %temp186$268
  %temp184$269 = bitcast i32 %temp185$267 to i32
  %temp189$270 = bitcast %__list* %__ctemp41$263 to %__list*
  %temp190$271 = getelementptr %__list, %__list* %__ctemp42$265, i32 0, i32 1
  store %__list* %temp189$270, %__list** %temp190$271
  %temp188$272 = bitcast %__list* %temp189$270 to %__list*
  %temp191$273 = call i8* @malloc(i32 8)
  %__ctemp43$274 = bitcast i8* %temp191$273 to %__list*
  %temp193$275 = bitcast %__list* %__env$252 to %__list*
  %temp194$276 = getelementptr %__list, %__list* %__ctemp43$274, i32 0, i32 1
  store %__list* %temp193$275, %__list** %temp194$276
  %temp192$277 = bitcast %__list* %temp193$275 to %__list*
  %temp198$278 = bitcast %__list* %__ctemp42$265 to %__list*
  %temp196$279 = ptrtoint %__list* %temp198$278 to i32
  %temp197$280 = getelementptr %__list, %__list* %__ctemp43$274, i32 0, i32 0
  store i32 %temp196$279, i32* %temp197$280
  %temp195$281 = bitcast i32 %temp196$279 to i32
  %__env$282 = bitcast %__list* %__ctemp43$274 to %__list*
  %temp199$283 = bitcast %__list* %__env$282 to %__list*
  %temp201$284 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp202$285 = bitcast i32 7 to i32
  %temp203$286 = bitcast %__list* %__env$282 to %__list*
  %temp200$287 = call i32 %temp201$284(i32 %temp202$285, %__list* %temp203$286)
  %__ctemp44$288 = inttoptr i32 %temp200$287 to %__clos*
  %temp205$289 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp206$290 = bitcast i32 0 to i32
  %temp207$291 = bitcast %__list* %__env$282 to %__list*
  %temp204$292 = call i32 %temp205$289(i32 %temp206$290, %__list* %temp207$291)
  %__ctemp45$293 = inttoptr i32 %temp204$292 to %__list*
  %temp209$294 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp210$295 = bitcast i32 2 to i32
  %temp211$296 = bitcast %__list* %__env$282 to %__list*
  %temp208$297 = call i32 %temp209$294(i32 %temp210$295, %__list* %temp211$296)
  %__ctemp46$298 = inttoptr i32 %temp208$297 to %__list*
  %temp212$299 = call i8* @malloc(i32 8)
  %__ctemp47$300 = bitcast i8* %temp212$299 to %__pair*
  %temp216$301 = bitcast %__list* %__ctemp45$293 to %__list*
  %temp214$302 = ptrtoint %__list* %temp216$301 to i32
  %temp215$303 = getelementptr %__pair, %__pair* %__ctemp47$300, i32 0, i32 0
  store i32 %temp214$302, i32* %temp215$303
  %temp213$304 = bitcast i32 %temp214$302 to i32
  %temp220$305 = bitcast %__list* %__ctemp46$298 to %__list*
  %temp218$306 = ptrtoint %__list* %temp220$305 to i32
  %temp219$307 = getelementptr %__pair, %__pair* %__ctemp47$300, i32 0, i32 1
  store i32 %temp218$306, i32* %temp219$307
  %temp217$308 = bitcast i32 %temp218$306 to i32
  %temp225$309 = bitcast %__clos* %__ctemp44$288 to %__clos*
  %temp226$310 = getelementptr %__clos, %__clos* %temp225$309, i32 0, i32 1
  %temp224$311 = load i32 ()*, i32 ()** %temp226$310
  %temp221$312 = bitcast i32 ()* %temp224$311 to %__list* (%__pair*, %__list*)*
  %temp222$313 = bitcast %__pair* %__ctemp47$300 to %__pair*
  %temp227$314 = bitcast %__clos* %__ctemp44$288 to %__clos*
  %temp228$315 = getelementptr %__clos, %__clos* %temp227$314, i32 0, i32 0
  %temp223$316 = load %__list*, %__list** %temp228$315
  %__ctemp48$317 = call %__list* %temp221$312(%__pair* %temp222$313, %__list* %temp223$316)
  %temp230$318 = bitcast %__list* %__env$282 to %__list*
  %temp231$319 = getelementptr %__list, %__list* %temp230$318, i32 0, i32 1
  %__env$320 = load %__list*, %__list** %temp231$319
  %temp229$321 = bitcast %__list* %__env$320 to %__list*
  %__ctemp49$322 = bitcast %__list* %__ctemp48$317 to %__list*
  %temp233$323 = bitcast %__list* %__env$320 to %__list*
  %temp234$324 = getelementptr %__list, %__list* %temp233$323, i32 0, i32 1
  %__env$325 = load %__list*, %__list** %temp234$324
  %temp232$326 = bitcast %__list* %__env$325 to %__list*
  %__ctemp34$327 = bitcast %__list* %__ctemp49$322 to %__list*
  %temp235$328 = bitcast %__list* %__ctemp34$327 to %__list*
  %temp237$329 = bitcast %__list* %__env$325 to %__list*
  %temp238$330 = getelementptr %__list, %__list* %temp237$329, i32 0, i32 1
  %__env$331 = load %__list*, %__list** %temp238$330
  %temp236$332 = bitcast %__list* %__env$331 to %__list*
  %temp240$333 = bitcast %__list* %__env$331 to %__list*
  %temp241$334 = getelementptr %__list, %__list* %temp240$333, i32 0, i32 1
  %__env$335 = load %__list*, %__list** %temp241$334
  %temp239$336 = bitcast %__list* %__env$335 to %__list*
  br label %label13
label13:
  %temp241$52 = phi %__list** [null, %label11], [%temp241$334, %label12]
  %temp240$53 = phi %__list* [null, %label11], [%temp240$333, %label12]
  %temp239$54 = phi %__list* [null, %label11], [%temp239$336, %label12]
  %temp238$55 = phi %__list** [null, %label11], [%temp238$330, %label12]
  %temp237$56 = phi %__list* [null, %label11], [%temp237$329, %label12]
  %temp236$57 = phi %__list* [null, %label11], [%temp236$332, %label12]
  %temp235$58 = phi %__list* [null, %label11], [%temp235$328, %label12]
  %temp234$59 = phi %__list** [null, %label11], [%temp234$324, %label12]
  %temp233$60 = phi %__list* [null, %label11], [%temp233$323, %label12]
  %temp232$61 = phi %__list* [null, %label11], [%temp232$326, %label12]
  %temp231$62 = phi %__list** [null, %label11], [%temp231$319, %label12]
  %temp230$63 = phi %__list* [null, %label11], [%temp230$318, %label12]
  %temp229$64 = phi %__list* [null, %label11], [%temp229$321, %label12]
  %temp228$65 = phi %__list** [null, %label11], [%temp228$315, %label12]
  %temp227$66 = phi %__clos* [null, %label11], [%temp227$314, %label12]
  %temp226$67 = phi i32 ()** [null, %label11], [%temp226$310, %label12]
  %temp225$68 = phi %__clos* [null, %label11], [%temp225$309, %label12]
  %temp224$69 = phi i32 ()* [null, %label11], [%temp224$311, %label12]
  %temp223$70 = phi %__list* [null, %label11], [%temp223$316, %label12]
  %temp222$71 = phi %__pair* [null, %label11], [%temp222$313, %label12]
  %temp221$72 = phi %__list* (%__pair*, %__list*)* [null, %label11], [%temp221$312, %label12]
  %temp220$73 = phi %__list* [null, %label11], [%temp220$305, %label12]
  %temp219$74 = phi i32* [null, %label11], [%temp219$307, %label12]
  %temp218$75 = phi i32 [0, %label11], [%temp218$306, %label12]
  %temp217$76 = phi i32 [0, %label11], [%temp217$308, %label12]
  %temp216$77 = phi %__list* [null, %label11], [%temp216$301, %label12]
  %temp215$78 = phi i32* [null, %label11], [%temp215$303, %label12]
  %temp214$79 = phi i32 [0, %label11], [%temp214$302, %label12]
  %temp213$80 = phi i32 [0, %label11], [%temp213$304, %label12]
  %temp212$81 = phi i8* [null, %label11], [%temp212$299, %label12]
  %temp211$82 = phi %__list* [null, %label11], [%temp211$296, %label12]
  %temp210$83 = phi i32 [0, %label11], [%temp210$295, %label12]
  %temp209$84 = phi i32 (i32, %__list*)* [null, %label11], [%temp209$294, %label12]
  %temp208$85 = phi i32 [0, %label11], [%temp208$297, %label12]
  %temp207$86 = phi %__list* [null, %label11], [%temp207$291, %label12]
  %temp206$87 = phi i32 [0, %label11], [%temp206$290, %label12]
  %temp205$88 = phi i32 (i32, %__list*)* [null, %label11], [%temp205$289, %label12]
  %temp204$89 = phi i32 [0, %label11], [%temp204$292, %label12]
  %temp203$90 = phi %__list* [null, %label11], [%temp203$286, %label12]
  %temp202$91 = phi i32 [0, %label11], [%temp202$285, %label12]
  %temp201$92 = phi i32 (i32, %__list*)* [null, %label11], [%temp201$284, %label12]
  %temp200$93 = phi i32 [0, %label11], [%temp200$287, %label12]
  %temp199$94 = phi %__list* [null, %label11], [%temp199$283, %label12]
  %temp198$95 = phi %__list* [null, %label11], [%temp198$278, %label12]
  %temp197$96 = phi i32* [null, %label11], [%temp197$280, %label12]
  %temp196$97 = phi i32 [0, %label11], [%temp196$279, %label12]
  %temp195$98 = phi i32 [0, %label11], [%temp195$281, %label12]
  %temp194$99 = phi %__list** [null, %label11], [%temp194$276, %label12]
  %temp193$100 = phi %__list* [null, %label11], [%temp193$275, %label12]
  %temp192$101 = phi %__list* [null, %label11], [%temp192$277, %label12]
  %temp191$102 = phi i8* [null, %label11], [%temp191$273, %label12]
  %temp190$103 = phi %__list** [null, %label11], [%temp190$271, %label12]
  %temp189$104 = phi %__list* [null, %label11], [%temp189$270, %label12]
  %temp188$105 = phi %__list* [null, %label11], [%temp188$272, %label12]
  %temp187$106 = phi i32 [0, %label11], [%temp187$266, %label12]
  %temp186$107 = phi i32* [null, %label11], [%temp186$268, %label12]
  %temp185$108 = phi i32 [0, %label11], [%temp185$267, %label12]
  %temp184$109 = phi i32 [0, %label11], [%temp184$269, %label12]
  %temp183$110 = phi i8* [null, %label11], [%temp183$264, %label12]
  %temp182$111 = phi %__list* [null, %label11], [%temp182$261, %label12]
  %temp181$112 = phi i32 [0, %label11], [%temp181$260, %label12]
  %temp180$113 = phi i32 (i32, %__list*)* [null, %label11], [%temp180$259, %label12]
  %temp179$114 = phi i32 [0, %label11], [%temp179$262, %label12]
  %temp178$115 = phi %__list* [null, %label11], [%temp178$256, %label12]
  %temp177$116 = phi i32 [0, %label11], [%temp177$255, %label12]
  %temp176$117 = phi i32 (i32, %__list*)* [null, %label11], [%temp176$254, %label12]
  %temp175$118 = phi i32 [0, %label11], [%temp175$257, %label12]
  %temp174$119 = phi %__list* [null, %label11], [%temp174$253, %label12]
  %temp173$120 = phi %__list** [null, %label11], [%temp173$246, %label12]
  %temp172$121 = phi %__clos* [null, %label11], [%temp172$245, %label12]
  %temp171$122 = phi i32 ()** [null, %label11], [%temp171$241, %label12]
  %temp170$123 = phi %__clos* [null, %label11], [%temp170$240, %label12]
  %temp169$124 = phi i32 ()* [null, %label11], [%temp169$242, %label12]
  %temp168$125 = phi %__list* [null, %label11], [%temp168$247, %label12]
  %temp167$126 = phi i32 [0, %label11], [%temp167$244, %label12]
  %temp166$127 = phi i32 (i32, %__list*)* [null, %label11], [%temp166$243, %label12]
  %temp165$128 = phi i32 [0, %label11], [%temp165$248, %label12]
  %temp164$129 = phi i32* [null, %label11], [%temp164$250, %label12]
  %temp163$130 = phi i32 [0, %label11], [%temp163$249, %label12]
  %temp162$131 = phi i32 [0, %label11], [%temp162$251, %label12]
  %temp161$132 = phi %__list** [null, %label11], [%temp161$238, %label12]
  %temp160$133 = phi %__list* [null, %label11], [%temp160$237, %label12]
  %temp159$134 = phi %__list* [null, %label11], [%temp159$239, %label12]
  %temp158$135 = phi i8* [null, %label11], [%temp158$235, %label12]
  %temp157$136 = phi %__list* [null, %label11], [%temp157$232, %label12]
  %temp156$137 = phi i32 [0, %label11], [%temp156$231, %label12]
  %temp155$138 = phi i32 (i32, %__list*)* [null, %label11], [%temp155$230, %label12]
  %temp154$139 = phi i32 [0, %label11], [%temp154$233, %label12]
  %temp153$140 = phi %__list* [null, %label11], [%temp153$227, %label12]
  %temp152$141 = phi i32 [0, %label11], [%temp152$226, %label12]
  %temp151$142 = phi i32 (i32, %__list*)* [null, %label11], [%temp151$225, %label12]
  %temp150$143 = phi i32 [0, %label11], [%temp150$228, %label12]
  %temp149$144 = phi %__list* [null, %label11], [%temp149$224, %label12]
  %temp148$145 = phi %__list** [null, %label11], [%temp148$218, %label12]
  %temp147$146 = phi %__list* [null, %label11], [%temp147$217, %label12]
  %temp146$147 = phi %__list* [null, %label11], [%temp146$219, %label12]
  %temp145$148 = phi i32* [null, %label11], [%temp145$221, %label12]
  %temp144$149 = phi i32 [0, %label11], [%temp144$220, %label12]
  %temp143$150 = phi i32 [0, %label11], [%temp143$222, %label12]
  %temp142$151 = phi %__list** [null, %label11], [%temp142$215, %label12]
  %temp141$152 = phi %__list* [null, %label11], [%temp141$214, %label12]
  %temp140$153 = phi %__list* [null, %label11], [%temp140$216, %label12]
  %temp139$154 = phi i8* [null, %label11], [%temp139$212, %label12]
  %temp138$155 = phi %__list* [null, %label11], [%temp138$211, %label12]
  %temp137$156 = phi i32* [null, %label11], [%temp137$205, %label12]
  %temp136$157 = phi %__list* [null, %label11], [%temp136$204, %label12]
  %temp135$158 = phi i32 [0, %label11], [%temp135$206, %label12]
  %temp134$159 = phi i32* [null, %label11], [%temp134$208, %label12]
  %temp133$160 = phi i32 [0, %label11], [%temp133$207, %label12]
  %temp132$161 = phi i32 [0, %label11], [%temp132$209, %label12]
  %temp131$162 = phi %__list** [null, %label11], [%temp131$202, %label12]
  %temp130$163 = phi %__list* [null, %label11], [%temp130$201, %label12]
  %temp129$164 = phi %__list* [null, %label11], [%temp129$203, %label12]
  %temp128$165 = phi i8* [null, %label11], [%temp128$199, %label12]
  %temp127$166 = phi %__list* [%temp127$343, %label11], [null, %label12]
  %temp126$167 = phi %__list* [%temp126$339, %label11], [null, %label12]
  %temp125$168 = phi i32 [%temp125$338, %label11], [0, %label12]
  %temp124$169 = phi i32 (i32, %__list*)* [%temp124$337, %label11], [null, %label12]
  %temp123$170 = phi i32 [%temp123$340, %label11], [0, %label12]
  %__env$171 = phi %__list* [%__env$41, %label11], [%__env$335, %label12]
  %__ctemp49$172 = phi %__list* [null, %label11], [%__ctemp49$322, %label12]
  %__ctemp48$173 = phi %__list* [null, %label11], [%__ctemp48$317, %label12]
  %__ctemp47$174 = phi %__pair* [null, %label11], [%__ctemp47$300, %label12]
  %__ctemp46$175 = phi %__list* [null, %label11], [%__ctemp46$298, %label12]
  %__ctemp45$176 = phi %__list* [null, %label11], [%__ctemp45$293, %label12]
  %__ctemp44$177 = phi %__clos* [null, %label11], [%__ctemp44$288, %label12]
  %__ctemp43$178 = phi %__list* [null, %label11], [%__ctemp43$274, %label12]
  %__ctemp42$179 = phi %__list* [null, %label11], [%__ctemp42$265, %label12]
  %__ctemp41$180 = phi %__list* [null, %label11], [%__ctemp41$263, %label12]
  %__ctemp40$181 = phi i32 [0, %label11], [%__ctemp40$258, %label12]
  %__ctemp39$182 = phi %__list* [null, %label11], [%__ctemp39$236, %label12]
  %__ctemp38$183 = phi i32 [0, %label11], [%__ctemp38$234, %label12]
  %__ctemp37$184 = phi %__clos* [null, %label11], [%__ctemp37$229, %label12]
  %__ctemp36$185 = phi %__list* [null, %label11], [%__ctemp36$213, %label12]
  %__ctemp35$186 = phi %__list* [null, %label11], [%__ctemp35$200, %label12]
  %__ctemp34$187 = phi %__list* [%__ctemp34$342, %label11], [%__ctemp34$327, %label12]
  %__ctemp33$188 = phi %__list* [%__ctemp33$341, %label11], [null, %label12]
  %__ctemp50$189 = bitcast %__list* %__ctemp34$187 to %__list*
  %temp247$190 = bitcast %__list* %__env$171 to %__list*
  %temp248$191 = getelementptr %__list, %__list* %temp247$190, i32 0, i32 1
  %__env$192 = load %__list*, %__list** %temp248$191
  %temp246$193 = bitcast %__list* %__env$192 to %__list*
  %temp250$194 = bitcast %__list* %__env$192 to %__list*
  %temp251$195 = getelementptr %__list, %__list* %temp250$194, i32 0, i32 1
  %__env$196 = load %__list*, %__list** %temp251$195
  %temp249$197 = bitcast %__list* %__env$196 to %__list*
  %temp252$198 = bitcast %__list* %__ctemp50$189 to %__list*
  ret %__list* %temp252$198
}

define %__list* @__fun25__body(%__list* %lst, %__list* %__env) {
__fun25__body__entry:
  %temp253$1 = call i8* @malloc(i32 8)
  %__ctemp26$2 = bitcast i8* %temp253$1 to %__list*
  %temp255$3 = bitcast %__list* %__env to %__list*
  %temp256$4 = getelementptr %__list, %__list* %__ctemp26$2, i32 0, i32 1
  store %__list* %temp255$3, %__list** %temp256$4
  %temp254$5 = bitcast %__list* %temp255$3 to %__list*
  %temp260$6 = bitcast %__list* %lst to %__list*
  %temp258$7 = ptrtoint %__list* %temp260$6 to i32
  %temp259$8 = getelementptr %__list, %__list* %__ctemp26$2, i32 0, i32 0
  store i32 %temp258$7, i32* %temp259$8
  %temp257$9 = bitcast i32 %temp258$7 to i32
  %__env$10 = bitcast %__list* %__ctemp26$2 to %__list*
  %temp261$11 = bitcast %__list* %__env$10 to %__list*
  %temp262$12 = call i8* @malloc(i32 8)
  %map_helper27_clos$13 = bitcast i8* %temp262$12 to %__clos*
  %temp264$14 = bitcast %__list* %__env$10 to %__list*
  %temp265$15 = getelementptr %__clos, %__clos* %map_helper27_clos$13, i32 0, i32 0
  store %__list* %temp264$14, %__list** %temp265$15
  %temp263$16 = bitcast %__list* %temp264$14 to %__list*
  %temp269$17 = bitcast %__list* (%__pair*, %__list*)* @map_helper27__body to %__list* (%__pair*, %__list*)*
  %temp267$18 = bitcast %__list* (%__pair*, %__list*)* %temp269$17 to i32 ()*
  %temp268$19 = getelementptr %__clos, %__clos* %map_helper27_clos$13, i32 0, i32 1
  store i32 ()* %temp267$18, i32 ()** %temp268$19
  %temp266$20 = bitcast i32 ()* %temp267$18 to i32 ()*
  %temp270$21 = call i8* @malloc(i32 8)
  %__ctemp51$22 = bitcast i8* %temp270$21 to %__list*
  %temp272$23 = bitcast %__list* %__env$10 to %__list*
  %temp273$24 = getelementptr %__list, %__list* %__ctemp51$22, i32 0, i32 1
  store %__list* %temp272$23, %__list** %temp273$24
  %temp271$25 = bitcast %__list* %temp272$23 to %__list*
  %temp277$26 = bitcast %__clos* %map_helper27_clos$13 to %__clos*
  %temp275$27 = ptrtoint %__clos* %temp277$26 to i32
  %temp276$28 = getelementptr %__list, %__list* %__ctemp51$22, i32 0, i32 0
  store i32 %temp275$27, i32* %temp276$28
  %temp274$29 = bitcast i32 %temp275$27 to i32
  %__env$30 = bitcast %__list* %__ctemp51$22 to %__list*
  %temp278$31 = bitcast %__list* %__env$30 to %__list*
  %temp280$32 = bitcast %__list* %__env$30 to %__list*
  %temp281$33 = getelementptr %__clos, %__clos* %map_helper27_clos$13, i32 0, i32 0
  store %__list* %temp280$32, %__list** %temp281$33
  %temp279$34 = bitcast %__list* %temp280$32 to %__list*
  %temp283$35 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp284$36 = bitcast i32 0 to i32
  %temp285$37 = bitcast %__list* %__env$30 to %__list*
  %temp282$38 = call i32 %temp283$35(i32 %temp284$36, %__list* %temp285$37)
  %__ctemp52$39 = inttoptr i32 %temp282$38 to %__clos*
  %temp287$40 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp288$41 = bitcast i32 1 to i32
  %temp289$42 = bitcast %__list* %__env$30 to %__list*
  %temp286$43 = call i32 %temp287$40(i32 %temp288$41, %__list* %temp289$42)
  %__ctemp53$44 = inttoptr i32 %temp286$43 to %__list*
  %temp290$45 = call i8* @malloc(i32 8)
  %__ctemp54$46 = bitcast i8* %temp290$45 to %__pair*
  %temp295$47 = bitcast i32 0 to i32
  %temp294$48 = inttoptr i32 %temp295$47 to %__list*
  %temp292$49 = ptrtoint %__list* %temp294$48 to i32
  %temp293$50 = getelementptr %__pair, %__pair* %__ctemp54$46, i32 0, i32 0
  store i32 %temp292$49, i32* %temp293$50
  %temp291$51 = bitcast i32 %temp292$49 to i32
  %temp299$52 = bitcast %__list* %__ctemp53$44 to %__list*
  %temp297$53 = ptrtoint %__list* %temp299$52 to i32
  %temp298$54 = getelementptr %__pair, %__pair* %__ctemp54$46, i32 0, i32 1
  store i32 %temp297$53, i32* %temp298$54
  %temp296$55 = bitcast i32 %temp297$53 to i32
  %temp304$56 = bitcast %__clos* %__ctemp52$39 to %__clos*
  %temp305$57 = getelementptr %__clos, %__clos* %temp304$56, i32 0, i32 1
  %temp303$58 = load i32 ()*, i32 ()** %temp305$57
  %temp300$59 = bitcast i32 ()* %temp303$58 to %__list* (%__pair*, %__list*)*
  %temp301$60 = bitcast %__pair* %__ctemp54$46 to %__pair*
  %temp306$61 = bitcast %__clos* %__ctemp52$39 to %__clos*
  %temp307$62 = getelementptr %__clos, %__clos* %temp306$61, i32 0, i32 0
  %temp302$63 = load %__list*, %__list** %temp307$62
  %__ctemp55$64 = call %__list* %temp300$59(%__pair* %temp301$60, %__list* %temp302$63)
  %temp309$65 = bitcast %__list* %__env$30 to %__list*
  %temp310$66 = getelementptr %__list, %__list* %temp309$65, i32 0, i32 1
  %__env$67 = load %__list*, %__list** %temp310$66
  %temp308$68 = bitcast %__list* %__env$67 to %__list*
  %temp311$69 = bitcast %__list* %__ctemp55$64 to %__list*
  ret %__list* %temp311$69
}

define %__clos* @__fun23__body(%__clos* %mapper, %__list* %__env) {
__fun23__body__entry:
  %temp312$1 = call i8* @malloc(i32 8)
  %__ctemp24$2 = bitcast i8* %temp312$1 to %__list*
  %temp314$3 = bitcast %__list* %__env to %__list*
  %temp315$4 = getelementptr %__list, %__list* %__ctemp24$2, i32 0, i32 1
  store %__list* %temp314$3, %__list** %temp315$4
  %temp313$5 = bitcast %__list* %temp314$3 to %__list*
  %temp319$6 = bitcast %__clos* %mapper to %__clos*
  %temp317$7 = ptrtoint %__clos* %temp319$6 to i32
  %temp318$8 = getelementptr %__list, %__list* %__ctemp24$2, i32 0, i32 0
  store i32 %temp317$7, i32* %temp318$8
  %temp316$9 = bitcast i32 %temp317$7 to i32
  %__env$10 = bitcast %__list* %__ctemp24$2 to %__list*
  %temp320$11 = bitcast %__list* %__env$10 to %__list*
  %temp321$12 = call i8* @malloc(i32 8)
  %__fun25_clos$13 = bitcast i8* %temp321$12 to %__clos*
  %temp323$14 = bitcast %__list* %__env$10 to %__list*
  %temp324$15 = getelementptr %__clos, %__clos* %__fun25_clos$13, i32 0, i32 0
  store %__list* %temp323$14, %__list** %temp324$15
  %temp322$16 = bitcast %__list* %temp323$14 to %__list*
  %temp328$17 = bitcast %__list* (%__list*, %__list*)* @__fun25__body to %__list* (%__list*, %__list*)*
  %temp326$18 = bitcast %__list* (%__list*, %__list*)* %temp328$17 to i32 ()*
  %temp327$19 = getelementptr %__clos, %__clos* %__fun25_clos$13, i32 0, i32 1
  store i32 ()* %temp326$18, i32 ()** %temp327$19
  %temp325$20 = bitcast i32 ()* %temp326$18 to i32 ()*
  %temp329$21 = bitcast %__clos* %__fun25_clos$13 to %__clos*
  ret %__clos* %temp329$21
}

define i32 @fold0__body(%__pair* %args, %__list* %__env) {
fold0__body__entry:
  %temp330$1 = call i8* @malloc(i32 8)
  %__ctemp1$2 = bitcast i8* %temp330$1 to %__list*
  %temp332$3 = bitcast %__list* %__env to %__list*
  %temp333$4 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 1
  store %__list* %temp332$3, %__list** %temp333$4
  %temp331$5 = bitcast %__list* %temp332$3 to %__list*
  %temp337$6 = bitcast %__pair* %args to %__pair*
  %temp335$7 = ptrtoint %__pair* %temp337$6 to i32
  %temp336$8 = getelementptr %__list, %__list* %__ctemp1$2, i32 0, i32 0
  store i32 %temp335$7, i32* %temp336$8
  %temp334$9 = bitcast i32 %temp335$7 to i32
  %__env$10 = bitcast %__list* %__ctemp1$2 to %__list*
  %temp338$11 = bitcast %__list* %__env$10 to %__list*
  %temp340$12 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp341$13 = bitcast i32 0 to i32
  %temp342$14 = bitcast %__list* %__env$10 to %__list*
  %temp339$15 = call i32 %temp340$12(i32 %temp341$13, %__list* %temp342$14)
  %__ctemp2$16 = inttoptr i32 %temp339$15 to %__pair*
  %temp343$17 = call i8* @malloc(i32 8)
  %__ctemp3$18 = bitcast i8* %temp343$17 to %__list*
  %temp345$19 = bitcast %__list* %__env$10 to %__list*
  %temp346$20 = getelementptr %__list, %__list* %__ctemp3$18, i32 0, i32 1
  store %__list* %temp345$19, %__list** %temp346$20
  %temp344$21 = bitcast %__list* %temp345$19 to %__list*
  %temp351$22 = bitcast %__pair* %__ctemp2$16 to %__pair*
  %temp352$23 = getelementptr %__pair, %__pair* %temp351$22, i32 0, i32 0
  %temp350$24 = load i32, i32* %temp352$23
  %temp348$25 = bitcast i32 %temp350$24 to i32
  %temp349$26 = getelementptr %__list, %__list* %__ctemp3$18, i32 0, i32 0
  store i32 %temp348$25, i32* %temp349$26
  %temp347$27 = bitcast i32 %temp348$25 to i32
  %__env$28 = bitcast %__list* %__ctemp3$18 to %__list*
  %temp353$29 = bitcast %__list* %__env$28 to %__list*
  %temp354$30 = call i8* @malloc(i32 8)
  %__ctemp4$31 = bitcast i8* %temp354$30 to %__list*
  %temp356$32 = bitcast %__list* %__env$28 to %__list*
  %temp357$33 = getelementptr %__list, %__list* %__ctemp4$31, i32 0, i32 1
  store %__list* %temp356$32, %__list** %temp357$33
  %temp355$34 = bitcast %__list* %temp356$32 to %__list*
  %temp362$35 = bitcast %__pair* %__ctemp2$16 to %__pair*
  %temp363$36 = getelementptr %__pair, %__pair* %temp362$35, i32 0, i32 1
  %temp361$37 = load i32, i32* %temp363$36
  %temp359$38 = bitcast i32 %temp361$37 to i32
  %temp360$39 = getelementptr %__list, %__list* %__ctemp4$31, i32 0, i32 0
  store i32 %temp359$38, i32* %temp360$39
  %temp358$40 = bitcast i32 %temp359$38 to i32
  %__env$41 = bitcast %__list* %__ctemp4$31 to %__list*
  %temp364$42 = bitcast %__list* %__env$41 to %__list*
  %temp366$43 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp367$44 = bitcast i32 0 to i32
  %temp368$45 = bitcast %__list* %__env$41 to %__list*
  %temp365$46 = call i32 %temp366$43(i32 %temp367$44, %__list* %temp368$45)
  %__ctemp5$47 = inttoptr i32 %temp365$46 to %__pair*
  %temp369$48 = call i8* @malloc(i32 8)
  %__ctemp6$49 = bitcast i8* %temp369$48 to %__list*
  %temp371$50 = bitcast %__list* %__env$41 to %__list*
  %temp372$51 = getelementptr %__list, %__list* %__ctemp6$49, i32 0, i32 1
  store %__list* %temp371$50, %__list** %temp372$51
  %temp370$52 = bitcast %__list* %temp371$50 to %__list*
  %temp377$53 = bitcast %__pair* %__ctemp5$47 to %__pair*
  %temp378$54 = getelementptr %__pair, %__pair* %temp377$53, i32 0, i32 0
  %temp376$55 = load i32, i32* %temp378$54
  %temp374$56 = bitcast i32 %temp376$55 to i32
  %temp375$57 = getelementptr %__list, %__list* %__ctemp6$49, i32 0, i32 0
  store i32 %temp374$56, i32* %temp375$57
  %temp373$58 = bitcast i32 %temp374$56 to i32
  %__env$59 = bitcast %__list* %__ctemp6$49 to %__list*
  %temp379$60 = bitcast %__list* %__env$59 to %__list*
  %temp380$61 = call i8* @malloc(i32 8)
  %__ctemp7$62 = bitcast i8* %temp380$61 to %__list*
  %temp382$63 = bitcast %__list* %__env$59 to %__list*
  %temp383$64 = getelementptr %__list, %__list* %__ctemp7$62, i32 0, i32 1
  store %__list* %temp382$63, %__list** %temp383$64
  %temp381$65 = bitcast %__list* %temp382$63 to %__list*
  %temp388$66 = bitcast %__pair* %__ctemp5$47 to %__pair*
  %temp389$67 = getelementptr %__pair, %__pair* %temp388$66, i32 0, i32 1
  %temp387$68 = load i32, i32* %temp389$67
  %temp385$69 = bitcast i32 %temp387$68 to i32
  %temp386$70 = getelementptr %__list, %__list* %__ctemp7$62, i32 0, i32 0
  store i32 %temp385$69, i32* %temp386$70
  %temp384$71 = bitcast i32 %temp385$69 to i32
  %__env$72 = bitcast %__list* %__ctemp7$62 to %__list*
  %temp390$73 = bitcast %__list* %__env$72 to %__list*
  %temp392$74 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp393$75 = bitcast i32 1 to i32
  %temp394$76 = bitcast %__list* %__env$72 to %__list*
  %temp391$77 = call i32 %temp392$74(i32 %temp393$75, %__list* %temp394$76)
  %__ctemp8$78 = inttoptr i32 %temp391$77 to %__list*
  %temp480$79 = bitcast %__list* %__ctemp8$78 to %__list*
  %temp478$80 = ptrtoint %__list* %temp480$79 to i32
  %temp479$81 = bitcast i32 0 to i32
  %temp477$82 = icmp eq i32 %temp478$80, %temp479$81
  br i1 %temp477$82, label %label17, label %label18
label17:
  %temp396$287 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp397$288 = bitcast i32 0 to i32
  %temp398$289 = bitcast %__list* %__env$72 to %__list*
  %temp395$290 = call i32 %temp396$287(i32 %temp397$288, %__list* %temp398$289)
  %__ctemp9$291 = bitcast i32 %temp395$290 to i32
  %__ctemp10$292 = bitcast i32 %__ctemp9$291 to i32
  %temp399$293 = bitcast i32 %__ctemp10$292 to i32
  br label %label19
label18:
  %temp400$196 = call i8* @malloc(i32 8)
  %__ctemp11$197 = bitcast i8* %temp400$196 to %__list*
  %temp402$198 = bitcast %__list* %__env$72 to %__list*
  %temp403$199 = getelementptr %__list, %__list* %__ctemp11$197, i32 0, i32 1
  store %__list* %temp402$198, %__list** %temp403$199
  %temp401$200 = bitcast %__list* %temp402$198 to %__list*
  %temp408$201 = bitcast %__list* %__ctemp8$78 to %__list*
  %temp409$202 = getelementptr %__list, %__list* %temp408$201, i32 0, i32 0
  %temp407$203 = load i32, i32* %temp409$202
  %temp405$204 = bitcast i32 %temp407$203 to i32
  %temp406$205 = getelementptr %__list, %__list* %__ctemp11$197, i32 0, i32 0
  store i32 %temp405$204, i32* %temp406$205
  %temp404$206 = bitcast i32 %temp405$204 to i32
  %__env$207 = bitcast %__list* %__ctemp11$197 to %__list*
  %temp410$208 = bitcast %__list* %__env$207 to %__list*
  %temp411$209 = call i8* @malloc(i32 8)
  %__ctemp12$210 = bitcast i8* %temp411$209 to %__list*
  %temp413$211 = bitcast %__list* %__env$207 to %__list*
  %temp414$212 = getelementptr %__list, %__list* %__ctemp12$210, i32 0, i32 1
  store %__list* %temp413$211, %__list** %temp414$212
  %temp412$213 = bitcast %__list* %temp413$211 to %__list*
  %temp419$214 = bitcast %__list* %__ctemp8$78 to %__list*
  %temp420$215 = getelementptr %__list, %__list* %temp419$214, i32 0, i32 1
  %temp418$216 = load %__list*, %__list** %temp420$215
  %temp416$217 = ptrtoint %__list* %temp418$216 to i32
  %temp417$218 = getelementptr %__list, %__list* %__ctemp12$210, i32 0, i32 0
  store i32 %temp416$217, i32* %temp417$218
  %temp415$219 = bitcast i32 %temp416$217 to i32
  %__env$220 = bitcast %__list* %__ctemp12$210 to %__list*
  %temp421$221 = bitcast %__list* %__env$220 to %__list*
  %temp423$222 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp424$223 = bitcast i32 7 to i32
  %temp425$224 = bitcast %__list* %__env$220 to %__list*
  %temp422$225 = call i32 %temp423$222(i32 %temp424$223, %__list* %temp425$224)
  %__ctemp13$226 = inttoptr i32 %temp422$225 to %__clos*
  %temp427$227 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp428$228 = bitcast i32 5 to i32
  %temp429$229 = bitcast %__list* %__env$220 to %__list*
  %temp426$230 = call i32 %temp427$227(i32 %temp428$228, %__list* %temp429$229)
  %__ctemp14$231 = inttoptr i32 %temp426$230 to %__clos*
  %temp431$232 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp432$233 = bitcast i32 0 to i32
  %temp433$234 = bitcast %__list* %__env$220 to %__list*
  %temp430$235 = call i32 %temp431$232(i32 %temp432$233, %__list* %temp433$234)
  %__ctemp15$236 = inttoptr i32 %temp430$235 to %__list*
  %temp435$237 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp436$238 = bitcast i32 2 to i32
  %temp437$239 = bitcast %__list* %__env$220 to %__list*
  %temp434$240 = call i32 %temp435$237(i32 %temp436$238, %__list* %temp437$239)
  %__ctemp16$241 = bitcast i32 %temp434$240 to i32
  %temp439$242 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp440$243 = bitcast i32 1 to i32
  %temp441$244 = bitcast %__list* %__env$220 to %__list*
  %temp438$245 = call i32 %temp439$242(i32 %temp440$243, %__list* %temp441$244)
  %__ctemp17$246 = bitcast i32 %temp438$245 to i32
  %temp442$247 = call i8* @malloc(i32 8)
  %__ctemp18$248 = bitcast i8* %temp442$247 to %__pair*
  %temp446$249 = bitcast %__list* %__ctemp15$236 to %__list*
  %temp444$250 = ptrtoint %__list* %temp446$249 to i32
  %temp445$251 = getelementptr %__pair, %__pair* %__ctemp18$248, i32 0, i32 0
  store i32 %temp444$250, i32* %temp445$251
  %temp443$252 = bitcast i32 %temp444$250 to i32
  %temp451$253 = bitcast i32 %__ctemp16$241 to i32
  %temp452$254 = bitcast i32 %__ctemp17$246 to i32
  %temp450$255 = add i32 %temp451$253, %temp452$254
  %temp448$256 = bitcast i32 %temp450$255 to i32
  %temp449$257 = getelementptr %__pair, %__pair* %__ctemp18$248, i32 0, i32 1
  store i32 %temp448$256, i32* %temp449$257
  %temp447$258 = bitcast i32 %temp448$256 to i32
  %temp453$259 = call i8* @malloc(i32 8)
  %__ctemp19$260 = bitcast i8* %temp453$259 to %__pair*
  %temp457$261 = bitcast %__clos* %__ctemp14$231 to %__clos*
  %temp455$262 = ptrtoint %__clos* %temp457$261 to i32
  %temp456$263 = getelementptr %__pair, %__pair* %__ctemp19$260, i32 0, i32 0
  store i32 %temp455$262, i32* %temp456$263
  %temp454$264 = bitcast i32 %temp455$262 to i32
  %temp461$265 = bitcast %__pair* %__ctemp18$248 to %__pair*
  %temp459$266 = ptrtoint %__pair* %temp461$265 to i32
  %temp460$267 = getelementptr %__pair, %__pair* %__ctemp19$260, i32 0, i32 1
  store i32 %temp459$266, i32* %temp460$267
  %temp458$268 = bitcast i32 %temp459$266 to i32
  %temp467$269 = bitcast %__clos* %__ctemp13$226 to %__clos*
  %temp468$270 = getelementptr %__clos, %__clos* %temp467$269, i32 0, i32 1
  %temp466$271 = load i32 ()*, i32 ()** %temp468$270
  %temp463$272 = bitcast i32 ()* %temp466$271 to i32 (%__pair*, %__list*)*
  %temp464$273 = bitcast %__pair* %__ctemp19$260 to %__pair*
  %temp469$274 = bitcast %__clos* %__ctemp13$226 to %__clos*
  %temp470$275 = getelementptr %__clos, %__clos* %temp469$274, i32 0, i32 0
  %temp465$276 = load %__list*, %__list** %temp470$275
  %__ctemp10$277 = call i32 %temp463$272(%__pair* %temp464$273, %__list* %temp465$276)
  %temp462$278 = bitcast i32 %__ctemp10$277 to i32
  %temp472$279 = bitcast %__list* %__env$220 to %__list*
  %temp473$280 = getelementptr %__list, %__list* %temp472$279, i32 0, i32 1
  %__env$281 = load %__list*, %__list** %temp473$280
  %temp471$282 = bitcast %__list* %__env$281 to %__list*
  %temp475$283 = bitcast %__list* %__env$281 to %__list*
  %temp476$284 = getelementptr %__list, %__list* %temp475$283, i32 0, i32 1
  %__env$285 = load %__list*, %__list** %temp476$284
  %temp474$286 = bitcast %__list* %__env$285 to %__list*
  br label %label19
label19:
  %temp476$83 = phi %__list** [null, %label17], [%temp476$284, %label18]
  %temp475$84 = phi %__list* [null, %label17], [%temp475$283, %label18]
  %temp474$85 = phi %__list* [null, %label17], [%temp474$286, %label18]
  %temp473$86 = phi %__list** [null, %label17], [%temp473$280, %label18]
  %temp472$87 = phi %__list* [null, %label17], [%temp472$279, %label18]
  %temp471$88 = phi %__list* [null, %label17], [%temp471$282, %label18]
  %temp470$89 = phi %__list** [null, %label17], [%temp470$275, %label18]
  %temp469$90 = phi %__clos* [null, %label17], [%temp469$274, %label18]
  %temp468$91 = phi i32 ()** [null, %label17], [%temp468$270, %label18]
  %temp467$92 = phi %__clos* [null, %label17], [%temp467$269, %label18]
  %temp466$93 = phi i32 ()* [null, %label17], [%temp466$271, %label18]
  %temp465$94 = phi %__list* [null, %label17], [%temp465$276, %label18]
  %temp464$95 = phi %__pair* [null, %label17], [%temp464$273, %label18]
  %temp463$96 = phi i32 (%__pair*, %__list*)* [null, %label17], [%temp463$272, %label18]
  %temp462$97 = phi i32 [0, %label17], [%temp462$278, %label18]
  %temp461$98 = phi %__pair* [null, %label17], [%temp461$265, %label18]
  %temp460$99 = phi i32* [null, %label17], [%temp460$267, %label18]
  %temp459$100 = phi i32 [0, %label17], [%temp459$266, %label18]
  %temp458$101 = phi i32 [0, %label17], [%temp458$268, %label18]
  %temp457$102 = phi %__clos* [null, %label17], [%temp457$261, %label18]
  %temp456$103 = phi i32* [null, %label17], [%temp456$263, %label18]
  %temp455$104 = phi i32 [0, %label17], [%temp455$262, %label18]
  %temp454$105 = phi i32 [0, %label17], [%temp454$264, %label18]
  %temp453$106 = phi i8* [null, %label17], [%temp453$259, %label18]
  %temp452$107 = phi i32 [0, %label17], [%temp452$254, %label18]
  %temp451$108 = phi i32 [0, %label17], [%temp451$253, %label18]
  %temp450$109 = phi i32 [0, %label17], [%temp450$255, %label18]
  %temp449$110 = phi i32* [null, %label17], [%temp449$257, %label18]
  %temp448$111 = phi i32 [0, %label17], [%temp448$256, %label18]
  %temp447$112 = phi i32 [0, %label17], [%temp447$258, %label18]
  %temp446$113 = phi %__list* [null, %label17], [%temp446$249, %label18]
  %temp445$114 = phi i32* [null, %label17], [%temp445$251, %label18]
  %temp444$115 = phi i32 [0, %label17], [%temp444$250, %label18]
  %temp443$116 = phi i32 [0, %label17], [%temp443$252, %label18]
  %temp442$117 = phi i8* [null, %label17], [%temp442$247, %label18]
  %temp441$118 = phi %__list* [null, %label17], [%temp441$244, %label18]
  %temp440$119 = phi i32 [0, %label17], [%temp440$243, %label18]
  %temp439$120 = phi i32 (i32, %__list*)* [null, %label17], [%temp439$242, %label18]
  %temp438$121 = phi i32 [0, %label17], [%temp438$245, %label18]
  %temp437$122 = phi %__list* [null, %label17], [%temp437$239, %label18]
  %temp436$123 = phi i32 [0, %label17], [%temp436$238, %label18]
  %temp435$124 = phi i32 (i32, %__list*)* [null, %label17], [%temp435$237, %label18]
  %temp434$125 = phi i32 [0, %label17], [%temp434$240, %label18]
  %temp433$126 = phi %__list* [null, %label17], [%temp433$234, %label18]
  %temp432$127 = phi i32 [0, %label17], [%temp432$233, %label18]
  %temp431$128 = phi i32 (i32, %__list*)* [null, %label17], [%temp431$232, %label18]
  %temp430$129 = phi i32 [0, %label17], [%temp430$235, %label18]
  %temp429$130 = phi %__list* [null, %label17], [%temp429$229, %label18]
  %temp428$131 = phi i32 [0, %label17], [%temp428$228, %label18]
  %temp427$132 = phi i32 (i32, %__list*)* [null, %label17], [%temp427$227, %label18]
  %temp426$133 = phi i32 [0, %label17], [%temp426$230, %label18]
  %temp425$134 = phi %__list* [null, %label17], [%temp425$224, %label18]
  %temp424$135 = phi i32 [0, %label17], [%temp424$223, %label18]
  %temp423$136 = phi i32 (i32, %__list*)* [null, %label17], [%temp423$222, %label18]
  %temp422$137 = phi i32 [0, %label17], [%temp422$225, %label18]
  %temp421$138 = phi %__list* [null, %label17], [%temp421$221, %label18]
  %temp420$139 = phi %__list** [null, %label17], [%temp420$215, %label18]
  %temp419$140 = phi %__list* [null, %label17], [%temp419$214, %label18]
  %temp418$141 = phi %__list* [null, %label17], [%temp418$216, %label18]
  %temp417$142 = phi i32* [null, %label17], [%temp417$218, %label18]
  %temp416$143 = phi i32 [0, %label17], [%temp416$217, %label18]
  %temp415$144 = phi i32 [0, %label17], [%temp415$219, %label18]
  %temp414$145 = phi %__list** [null, %label17], [%temp414$212, %label18]
  %temp413$146 = phi %__list* [null, %label17], [%temp413$211, %label18]
  %temp412$147 = phi %__list* [null, %label17], [%temp412$213, %label18]
  %temp411$148 = phi i8* [null, %label17], [%temp411$209, %label18]
  %temp410$149 = phi %__list* [null, %label17], [%temp410$208, %label18]
  %temp409$150 = phi i32* [null, %label17], [%temp409$202, %label18]
  %temp408$151 = phi %__list* [null, %label17], [%temp408$201, %label18]
  %temp407$152 = phi i32 [0, %label17], [%temp407$203, %label18]
  %temp406$153 = phi i32* [null, %label17], [%temp406$205, %label18]
  %temp405$154 = phi i32 [0, %label17], [%temp405$204, %label18]
  %temp404$155 = phi i32 [0, %label17], [%temp404$206, %label18]
  %temp403$156 = phi %__list** [null, %label17], [%temp403$199, %label18]
  %temp402$157 = phi %__list* [null, %label17], [%temp402$198, %label18]
  %temp401$158 = phi %__list* [null, %label17], [%temp401$200, %label18]
  %temp400$159 = phi i8* [null, %label17], [%temp400$196, %label18]
  %temp399$160 = phi i32 [%temp399$293, %label17], [0, %label18]
  %temp398$161 = phi %__list* [%temp398$289, %label17], [null, %label18]
  %temp397$162 = phi i32 [%temp397$288, %label17], [0, %label18]
  %temp396$163 = phi i32 (i32, %__list*)* [%temp396$287, %label17], [null, %label18]
  %temp395$164 = phi i32 [%temp395$290, %label17], [0, %label18]
  %__env$165 = phi %__list* [%__env$72, %label17], [%__env$285, %label18]
  %__ctemp9$166 = phi i32 [%__ctemp9$291, %label17], [0, %label18]
  %__ctemp19$167 = phi %__pair* [null, %label17], [%__ctemp19$260, %label18]
  %__ctemp18$168 = phi %__pair* [null, %label17], [%__ctemp18$248, %label18]
  %__ctemp17$169 = phi i32 [0, %label17], [%__ctemp17$246, %label18]
  %__ctemp16$170 = phi i32 [0, %label17], [%__ctemp16$241, %label18]
  %__ctemp15$171 = phi %__list* [null, %label17], [%__ctemp15$236, %label18]
  %__ctemp14$172 = phi %__clos* [null, %label17], [%__ctemp14$231, %label18]
  %__ctemp13$173 = phi %__clos* [null, %label17], [%__ctemp13$226, %label18]
  %__ctemp12$174 = phi %__list* [null, %label17], [%__ctemp12$210, %label18]
  %__ctemp11$175 = phi %__list* [null, %label17], [%__ctemp11$197, %label18]
  %__ctemp10$176 = phi i32 [%__ctemp10$292, %label17], [%__ctemp10$277, %label18]
  %__ctemp20$177 = bitcast i32 %__ctemp10$176 to i32
  %temp482$178 = bitcast %__list* %__env$165 to %__list*
  %temp483$179 = getelementptr %__list, %__list* %temp482$178, i32 0, i32 1
  %__env$180 = load %__list*, %__list** %temp483$179
  %temp481$181 = bitcast %__list* %__env$180 to %__list*
  %temp485$182 = bitcast %__list* %__env$180 to %__list*
  %temp486$183 = getelementptr %__list, %__list* %temp485$182, i32 0, i32 1
  %__env$184 = load %__list*, %__list** %temp486$183
  %temp484$185 = bitcast %__list* %__env$184 to %__list*
  %__ctemp21$186 = bitcast i32 %__ctemp20$177 to i32
  %temp488$187 = bitcast %__list* %__env$184 to %__list*
  %temp489$188 = getelementptr %__list, %__list* %temp488$187, i32 0, i32 1
  %__env$189 = load %__list*, %__list** %temp489$188
  %temp487$190 = bitcast %__list* %__env$189 to %__list*
  %temp491$191 = bitcast %__list* %__env$189 to %__list*
  %temp492$192 = getelementptr %__list, %__list* %temp491$191, i32 0, i32 1
  %__env$193 = load %__list*, %__list** %temp492$192
  %temp490$194 = bitcast %__list* %__env$193 to %__list*
  %temp493$195 = bitcast i32 %__ctemp21$186 to i32
  ret i32 %temp493$195
}

define i32 @main() {
main__entry:
  %temp494$1 = bitcast i32 0 to i32
  %__env$2 = inttoptr i32 %temp494$1 to %__list*
  %temp495$3 = call i8* @malloc(i32 8)
  %fold0_clos$4 = bitcast i8* %temp495$3 to %__clos*
  %temp497$5 = bitcast %__list* %__env$2 to %__list*
  %temp498$6 = getelementptr %__clos, %__clos* %fold0_clos$4, i32 0, i32 0
  store %__list* %temp497$5, %__list** %temp498$6
  %temp496$7 = bitcast %__list* %temp497$5 to %__list*
  %temp502$8 = bitcast i32 (%__pair*, %__list*)* @fold0__body to i32 (%__pair*, %__list*)*
  %temp500$9 = bitcast i32 (%__pair*, %__list*)* %temp502$8 to i32 ()*
  %temp501$10 = getelementptr %__clos, %__clos* %fold0_clos$4, i32 0, i32 1
  store i32 ()* %temp500$9, i32 ()** %temp501$10
  %temp499$11 = bitcast i32 ()* %temp500$9 to i32 ()*
  %temp503$12 = call i8* @malloc(i32 8)
  %__ctemp22$13 = bitcast i8* %temp503$12 to %__list*
  %temp505$14 = bitcast %__list* %__env$2 to %__list*
  %temp506$15 = getelementptr %__list, %__list* %__ctemp22$13, i32 0, i32 1
  store %__list* %temp505$14, %__list** %temp506$15
  %temp504$16 = bitcast %__list* %temp505$14 to %__list*
  %temp510$17 = bitcast %__clos* %fold0_clos$4 to %__clos*
  %temp508$18 = ptrtoint %__clos* %temp510$17 to i32
  %temp509$19 = getelementptr %__list, %__list* %__ctemp22$13, i32 0, i32 0
  store i32 %temp508$18, i32* %temp509$19
  %temp507$20 = bitcast i32 %temp508$18 to i32
  %__env$21 = bitcast %__list* %__ctemp22$13 to %__list*
  %temp511$22 = bitcast %__list* %__env$21 to %__list*
  %temp513$23 = bitcast %__list* %__env$21 to %__list*
  %temp514$24 = getelementptr %__clos, %__clos* %fold0_clos$4, i32 0, i32 0
  store %__list* %temp513$23, %__list** %temp514$24
  %temp512$25 = bitcast %__list* %temp513$23 to %__list*
  %temp515$26 = call i8* @malloc(i32 8)
  %__fun23_clos$27 = bitcast i8* %temp515$26 to %__clos*
  %temp517$28 = bitcast %__list* %__env$21 to %__list*
  %temp518$29 = getelementptr %__clos, %__clos* %__fun23_clos$27, i32 0, i32 0
  store %__list* %temp517$28, %__list** %temp518$29
  %temp516$30 = bitcast %__list* %temp517$28 to %__list*
  %temp522$31 = bitcast %__clos* (%__clos*, %__list*)* @__fun23__body to %__clos* (%__clos*, %__list*)*
  %temp520$32 = bitcast %__clos* (%__clos*, %__list*)* %temp522$31 to i32 ()*
  %temp521$33 = getelementptr %__clos, %__clos* %__fun23_clos$27, i32 0, i32 1
  store i32 ()* %temp520$32, i32 ()** %temp521$33
  %temp519$34 = bitcast i32 ()* %temp520$32 to i32 ()*
  %temp523$35 = call i8* @malloc(i32 8)
  %__ctemp56$36 = bitcast i8* %temp523$35 to %__list*
  %temp525$37 = bitcast %__list* %__env$21 to %__list*
  %temp526$38 = getelementptr %__list, %__list* %__ctemp56$36, i32 0, i32 1
  store %__list* %temp525$37, %__list** %temp526$38
  %temp524$39 = bitcast %__list* %temp525$37 to %__list*
  %temp530$40 = bitcast %__clos* %__fun23_clos$27 to %__clos*
  %temp528$41 = ptrtoint %__clos* %temp530$40 to i32
  %temp529$42 = getelementptr %__list, %__list* %__ctemp56$36, i32 0, i32 0
  store i32 %temp528$41, i32* %temp529$42
  %temp527$43 = bitcast i32 %temp528$41 to i32
  %__env$44 = bitcast %__list* %__ctemp56$36 to %__list*
  %temp531$45 = bitcast %__list* %__env$44 to %__list*
  %temp532$46 = call i8* @malloc(i32 8)
  %__fun57_clos$47 = bitcast i8* %temp532$46 to %__clos*
  %temp534$48 = bitcast %__list* %__env$44 to %__list*
  %temp535$49 = getelementptr %__clos, %__clos* %__fun57_clos$47, i32 0, i32 0
  store %__list* %temp534$48, %__list** %temp535$49
  %temp533$50 = bitcast %__list* %temp534$48 to %__list*
  %temp539$51 = bitcast i32 (i32, %__list*)* @__fun57__body to i32 (i32, %__list*)*
  %temp537$52 = bitcast i32 (i32, %__list*)* %temp539$51 to i32 ()*
  %temp538$53 = getelementptr %__clos, %__clos* %__fun57_clos$47, i32 0, i32 1
  store i32 ()* %temp537$52, i32 ()** %temp538$53
  %temp536$54 = bitcast i32 ()* %temp537$52 to i32 ()*
  %temp540$55 = call i8* @malloc(i32 8)
  %__ctemp63$56 = bitcast i8* %temp540$55 to %__list*
  %temp542$57 = bitcast %__list* %__env$44 to %__list*
  %temp543$58 = getelementptr %__list, %__list* %__ctemp63$56, i32 0, i32 1
  store %__list* %temp542$57, %__list** %temp543$58
  %temp541$59 = bitcast %__list* %temp542$57 to %__list*
  %temp547$60 = bitcast %__clos* %__fun57_clos$47 to %__clos*
  %temp545$61 = ptrtoint %__clos* %temp547$60 to i32
  %temp546$62 = getelementptr %__list, %__list* %__ctemp63$56, i32 0, i32 0
  store i32 %temp545$61, i32* %temp546$62
  %temp544$63 = bitcast i32 %temp545$61 to i32
  %__env$64 = bitcast %__list* %__ctemp63$56 to %__list*
  %temp548$65 = bitcast %__list* %__env$64 to %__list*
  %temp549$66 = call i8* @malloc(i32 8)
  %__fun64_clos$67 = bitcast i8* %temp549$66 to %__clos*
  %temp551$68 = bitcast %__list* %__env$64 to %__list*
  %temp552$69 = getelementptr %__clos, %__clos* %__fun64_clos$67, i32 0, i32 0
  store %__list* %temp551$68, %__list** %temp552$69
  %temp550$70 = bitcast %__list* %temp551$68 to %__list*
  %temp556$71 = bitcast %__clos* (i32, %__list*)* @__fun64__body to %__clos* (i32, %__list*)*
  %temp554$72 = bitcast %__clos* (i32, %__list*)* %temp556$71 to i32 ()*
  %temp555$73 = getelementptr %__clos, %__clos* %__fun64_clos$67, i32 0, i32 1
  store i32 ()* %temp554$72, i32 ()** %temp555$73
  %temp553$74 = bitcast i32 ()* %temp554$72 to i32 ()*
  %temp557$75 = call i8* @malloc(i32 8)
  %__ctemp70$76 = bitcast i8* %temp557$75 to %__list*
  %temp559$77 = bitcast %__list* %__env$64 to %__list*
  %temp560$78 = getelementptr %__list, %__list* %__ctemp70$76, i32 0, i32 1
  store %__list* %temp559$77, %__list** %temp560$78
  %temp558$79 = bitcast %__list* %temp559$77 to %__list*
  %temp564$80 = bitcast %__clos* %__fun64_clos$67 to %__clos*
  %temp562$81 = ptrtoint %__clos* %temp564$80 to i32
  %temp563$82 = getelementptr %__list, %__list* %__ctemp70$76, i32 0, i32 0
  store i32 %temp562$81, i32* %temp563$82
  %temp561$83 = bitcast i32 %temp562$81 to i32
  %__env$84 = bitcast %__list* %__ctemp70$76 to %__list*
  %temp565$85 = bitcast %__list* %__env$84 to %__list*
  %temp566$86 = call i8* @malloc(i32 8)
  %__ctemp71$87 = bitcast i8* %temp566$86 to %__list*
  %temp570$88 = bitcast i32 10 to i32
  %temp568$89 = bitcast i32 %temp570$88 to i32
  %temp569$90 = getelementptr %__list, %__list* %__ctemp71$87, i32 0, i32 0
  store i32 %temp568$89, i32* %temp569$90
  %temp567$91 = bitcast i32 %temp568$89 to i32
  %temp574$92 = bitcast i32 0 to i32
  %temp572$93 = inttoptr i32 %temp574$92 to %__list*
  %temp573$94 = getelementptr %__list, %__list* %__ctemp71$87, i32 0, i32 1
  store %__list* %temp572$93, %__list** %temp573$94
  %temp571$95 = bitcast %__list* %temp572$93 to %__list*
  %temp575$96 = call i8* @malloc(i32 8)
  %__ctemp72$97 = bitcast i8* %temp575$96 to %__list*
  %temp579$98 = bitcast i32 9 to i32
  %temp577$99 = bitcast i32 %temp579$98 to i32
  %temp578$100 = getelementptr %__list, %__list* %__ctemp72$97, i32 0, i32 0
  store i32 %temp577$99, i32* %temp578$100
  %temp576$101 = bitcast i32 %temp577$99 to i32
  %temp581$102 = bitcast %__list* %__ctemp71$87 to %__list*
  %temp582$103 = getelementptr %__list, %__list* %__ctemp72$97, i32 0, i32 1
  store %__list* %temp581$102, %__list** %temp582$103
  %temp580$104 = bitcast %__list* %temp581$102 to %__list*
  %temp583$105 = call i8* @malloc(i32 8)
  %__ctemp73$106 = bitcast i8* %temp583$105 to %__list*
  %temp587$107 = bitcast i32 8 to i32
  %temp585$108 = bitcast i32 %temp587$107 to i32
  %temp586$109 = getelementptr %__list, %__list* %__ctemp73$106, i32 0, i32 0
  store i32 %temp585$108, i32* %temp586$109
  %temp584$110 = bitcast i32 %temp585$108 to i32
  %temp589$111 = bitcast %__list* %__ctemp72$97 to %__list*
  %temp590$112 = getelementptr %__list, %__list* %__ctemp73$106, i32 0, i32 1
  store %__list* %temp589$111, %__list** %temp590$112
  %temp588$113 = bitcast %__list* %temp589$111 to %__list*
  %temp591$114 = call i8* @malloc(i32 8)
  %__ctemp74$115 = bitcast i8* %temp591$114 to %__list*
  %temp595$116 = bitcast i32 7 to i32
  %temp593$117 = bitcast i32 %temp595$116 to i32
  %temp594$118 = getelementptr %__list, %__list* %__ctemp74$115, i32 0, i32 0
  store i32 %temp593$117, i32* %temp594$118
  %temp592$119 = bitcast i32 %temp593$117 to i32
  %temp597$120 = bitcast %__list* %__ctemp73$106 to %__list*
  %temp598$121 = getelementptr %__list, %__list* %__ctemp74$115, i32 0, i32 1
  store %__list* %temp597$120, %__list** %temp598$121
  %temp596$122 = bitcast %__list* %temp597$120 to %__list*
  %temp599$123 = call i8* @malloc(i32 8)
  %__ctemp75$124 = bitcast i8* %temp599$123 to %__list*
  %temp603$125 = bitcast i32 6 to i32
  %temp601$126 = bitcast i32 %temp603$125 to i32
  %temp602$127 = getelementptr %__list, %__list* %__ctemp75$124, i32 0, i32 0
  store i32 %temp601$126, i32* %temp602$127
  %temp600$128 = bitcast i32 %temp601$126 to i32
  %temp605$129 = bitcast %__list* %__ctemp74$115 to %__list*
  %temp606$130 = getelementptr %__list, %__list* %__ctemp75$124, i32 0, i32 1
  store %__list* %temp605$129, %__list** %temp606$130
  %temp604$131 = bitcast %__list* %temp605$129 to %__list*
  %temp607$132 = call i8* @malloc(i32 8)
  %__ctemp76$133 = bitcast i8* %temp607$132 to %__list*
  %temp611$134 = bitcast i32 5 to i32
  %temp609$135 = bitcast i32 %temp611$134 to i32
  %temp610$136 = getelementptr %__list, %__list* %__ctemp76$133, i32 0, i32 0
  store i32 %temp609$135, i32* %temp610$136
  %temp608$137 = bitcast i32 %temp609$135 to i32
  %temp613$138 = bitcast %__list* %__ctemp75$124 to %__list*
  %temp614$139 = getelementptr %__list, %__list* %__ctemp76$133, i32 0, i32 1
  store %__list* %temp613$138, %__list** %temp614$139
  %temp612$140 = bitcast %__list* %temp613$138 to %__list*
  %temp615$141 = call i8* @malloc(i32 8)
  %__ctemp77$142 = bitcast i8* %temp615$141 to %__list*
  %temp619$143 = bitcast i32 4 to i32
  %temp617$144 = bitcast i32 %temp619$143 to i32
  %temp618$145 = getelementptr %__list, %__list* %__ctemp77$142, i32 0, i32 0
  store i32 %temp617$144, i32* %temp618$145
  %temp616$146 = bitcast i32 %temp617$144 to i32
  %temp621$147 = bitcast %__list* %__ctemp76$133 to %__list*
  %temp622$148 = getelementptr %__list, %__list* %__ctemp77$142, i32 0, i32 1
  store %__list* %temp621$147, %__list** %temp622$148
  %temp620$149 = bitcast %__list* %temp621$147 to %__list*
  %temp623$150 = call i8* @malloc(i32 8)
  %__ctemp78$151 = bitcast i8* %temp623$150 to %__list*
  %temp627$152 = bitcast i32 3 to i32
  %temp625$153 = bitcast i32 %temp627$152 to i32
  %temp626$154 = getelementptr %__list, %__list* %__ctemp78$151, i32 0, i32 0
  store i32 %temp625$153, i32* %temp626$154
  %temp624$155 = bitcast i32 %temp625$153 to i32
  %temp629$156 = bitcast %__list* %__ctemp77$142 to %__list*
  %temp630$157 = getelementptr %__list, %__list* %__ctemp78$151, i32 0, i32 1
  store %__list* %temp629$156, %__list** %temp630$157
  %temp628$158 = bitcast %__list* %temp629$156 to %__list*
  %temp631$159 = call i8* @malloc(i32 8)
  %__ctemp79$160 = bitcast i8* %temp631$159 to %__list*
  %temp635$161 = bitcast i32 2 to i32
  %temp633$162 = bitcast i32 %temp635$161 to i32
  %temp634$163 = getelementptr %__list, %__list* %__ctemp79$160, i32 0, i32 0
  store i32 %temp633$162, i32* %temp634$163
  %temp632$164 = bitcast i32 %temp633$162 to i32
  %temp637$165 = bitcast %__list* %__ctemp78$151 to %__list*
  %temp638$166 = getelementptr %__list, %__list* %__ctemp79$160, i32 0, i32 1
  store %__list* %temp637$165, %__list** %temp638$166
  %temp636$167 = bitcast %__list* %temp637$165 to %__list*
  %temp639$168 = call i8* @malloc(i32 8)
  %__ctemp80$169 = bitcast i8* %temp639$168 to %__list*
  %temp643$170 = bitcast i32 1 to i32
  %temp641$171 = bitcast i32 %temp643$170 to i32
  %temp642$172 = getelementptr %__list, %__list* %__ctemp80$169, i32 0, i32 0
  store i32 %temp641$171, i32* %temp642$172
  %temp640$173 = bitcast i32 %temp641$171 to i32
  %temp645$174 = bitcast %__list* %__ctemp79$160 to %__list*
  %temp646$175 = getelementptr %__list, %__list* %__ctemp80$169, i32 0, i32 1
  store %__list* %temp645$174, %__list** %temp646$175
  %temp644$176 = bitcast %__list* %temp645$174 to %__list*
  %temp647$177 = call i8* @malloc(i32 8)
  %__ctemp81$178 = bitcast i8* %temp647$177 to %__list*
  %temp649$179 = bitcast %__list* %__env$84 to %__list*
  %temp650$180 = getelementptr %__list, %__list* %__ctemp81$178, i32 0, i32 1
  store %__list* %temp649$179, %__list** %temp650$180
  %temp648$181 = bitcast %__list* %temp649$179 to %__list*
  %temp654$182 = bitcast %__list* %__ctemp80$169 to %__list*
  %temp652$183 = ptrtoint %__list* %temp654$182 to i32
  %temp653$184 = getelementptr %__list, %__list* %__ctemp81$178, i32 0, i32 0
  store i32 %temp652$183, i32* %temp653$184
  %temp651$185 = bitcast i32 %temp652$183 to i32
  %__env$186 = bitcast %__list* %__ctemp81$178 to %__list*
  %temp655$187 = bitcast %__list* %__env$186 to %__list*
  %temp657$188 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp658$189 = bitcast i32 4 to i32
  %temp659$190 = bitcast %__list* %__env$186 to %__list*
  %temp656$191 = call i32 %temp657$188(i32 %temp658$189, %__list* %temp659$190)
  %__ctemp82$192 = inttoptr i32 %temp656$191 to %__clos*
  %temp661$193 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp662$194 = bitcast i32 1 to i32
  %temp663$195 = bitcast %__list* %__env$186 to %__list*
  %temp660$196 = call i32 %temp661$193(i32 %temp662$194, %__list* %temp663$195)
  %__ctemp83$197 = inttoptr i32 %temp660$196 to %__clos*
  %temp665$198 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp666$199 = bitcast i32 3 to i32
  %temp667$200 = bitcast %__list* %__env$186 to %__list*
  %temp664$201 = call i32 %temp665$198(i32 %temp666$199, %__list* %temp667$200)
  %__ctemp84$202 = inttoptr i32 %temp664$201 to %__clos*
  %temp669$203 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp670$204 = bitcast i32 2 to i32
  %temp671$205 = bitcast %__list* %__env$186 to %__list*
  %temp668$206 = call i32 %temp669$203(i32 %temp670$204, %__list* %temp671$205)
  %__ctemp85$207 = inttoptr i32 %temp668$206 to %__clos*
  %temp673$208 = bitcast i32 (i32, %__list*)* @__lookup to i32 (i32, %__list*)*
  %temp674$209 = bitcast i32 0 to i32
  %temp675$210 = bitcast %__list* %__env$186 to %__list*
  %temp672$211 = call i32 %temp673$208(i32 %temp674$209, %__list* %temp675$210)
  %__ctemp86$212 = inttoptr i32 %temp672$211 to %__list*
  %temp676$213 = call i8* @malloc(i32 8)
  %__ctemp87$214 = bitcast i8* %temp676$213 to %__pair*
  %temp691$215 = bitcast %__clos* %__ctemp84$202 to %__clos*
  %temp692$216 = getelementptr %__clos, %__clos* %temp691$215, i32 0, i32 1
  %temp690$217 = load i32 ()*, i32 ()** %temp692$216
  %temp687$218 = bitcast i32 ()* %temp690$217 to %__clos* (%__clos*, %__list*)*
  %temp688$219 = bitcast %__clos* %__ctemp85$207 to %__clos*
  %temp693$220 = bitcast %__clos* %__ctemp84$202 to %__clos*
  %temp694$221 = getelementptr %__clos, %__clos* %temp693$220, i32 0, i32 0
  %temp689$222 = load %__list*, %__list** %temp694$221
  %temp685$223 = call %__clos* %temp687$218(%__clos* %temp688$219, %__list* %temp689$222)
  %temp686$224 = getelementptr %__clos, %__clos* %temp685$223, i32 0, i32 1
  %temp684$225 = load i32 ()*, i32 ()** %temp686$224
  %temp681$226 = bitcast i32 ()* %temp684$225 to %__list* (%__list*, %__list*)*
  %temp682$227 = bitcast %__list* %__ctemp86$212 to %__list*
  %temp701$228 = bitcast %__clos* %__ctemp84$202 to %__clos*
  %temp702$229 = getelementptr %__clos, %__clos* %temp701$228, i32 0, i32 1
  %temp700$230 = load i32 ()*, i32 ()** %temp702$229
  %temp697$231 = bitcast i32 ()* %temp700$230 to %__clos* (%__clos*, %__list*)*
  %temp698$232 = bitcast %__clos* %__ctemp85$207 to %__clos*
  %temp703$233 = bitcast %__clos* %__ctemp84$202 to %__clos*
  %temp704$234 = getelementptr %__clos, %__clos* %temp703$233, i32 0, i32 0
  %temp699$235 = load %__list*, %__list** %temp704$234
  %temp695$236 = call %__clos* %temp697$231(%__clos* %temp698$232, %__list* %temp699$235)
  %temp696$237 = getelementptr %__clos, %__clos* %temp695$236, i32 0, i32 0
  %temp683$238 = load %__list*, %__list** %temp696$237
  %temp680$239 = call %__list* %temp681$226(%__list* %temp682$227, %__list* %temp683$238)
  %temp678$240 = ptrtoint %__list* %temp680$239 to i32
  %temp679$241 = getelementptr %__pair, %__pair* %__ctemp87$214, i32 0, i32 0
  store i32 %temp678$240, i32* %temp679$241
  %temp677$242 = bitcast i32 %temp678$240 to i32
  %temp708$243 = bitcast i32 0 to i32
  %temp706$244 = bitcast i32 %temp708$243 to i32
  %temp707$245 = getelementptr %__pair, %__pair* %__ctemp87$214, i32 0, i32 1
  store i32 %temp706$244, i32* %temp707$245
  %temp705$246 = bitcast i32 %temp706$244 to i32
  %temp709$247 = call i8* @malloc(i32 8)
  %__ctemp88$248 = bitcast i8* %temp709$247 to %__pair*
  %temp713$249 = bitcast %__clos* %__ctemp83$197 to %__clos*
  %temp711$250 = ptrtoint %__clos* %temp713$249 to i32
  %temp712$251 = getelementptr %__pair, %__pair* %__ctemp88$248, i32 0, i32 0
  store i32 %temp711$250, i32* %temp712$251
  %temp710$252 = bitcast i32 %temp711$250 to i32
  %temp717$253 = bitcast %__pair* %__ctemp87$214 to %__pair*
  %temp715$254 = ptrtoint %__pair* %temp717$253 to i32
  %temp716$255 = getelementptr %__pair, %__pair* %__ctemp88$248, i32 0, i32 1
  store i32 %temp715$254, i32* %temp716$255
  %temp714$256 = bitcast i32 %temp715$254 to i32
  %temp722$257 = bitcast %__clos* %__ctemp82$192 to %__clos*
  %temp723$258 = getelementptr %__clos, %__clos* %temp722$257, i32 0, i32 1
  %temp721$259 = load i32 ()*, i32 ()** %temp723$258
  %temp718$260 = bitcast i32 ()* %temp721$259 to i32 (%__pair*, %__list*)*
  %temp719$261 = bitcast %__pair* %__ctemp88$248 to %__pair*
  %temp724$262 = bitcast %__clos* %__ctemp82$192 to %__clos*
  %temp725$263 = getelementptr %__clos, %__clos* %temp724$262, i32 0, i32 0
  %temp720$264 = load %__list*, %__list** %temp725$263
  %__ctemp89$265 = call i32 %temp718$260(%__pair* %temp719$261, %__list* %temp720$264)
  %temp727$266 = bitcast %__list* %__env$186 to %__list*
  %temp728$267 = getelementptr %__list, %__list* %temp727$266, i32 0, i32 1
  %__env$268 = load %__list*, %__list** %temp728$267
  %temp726$269 = bitcast %__list* %__env$268 to %__list*
  %__ctemp90$270 = bitcast i32 %__ctemp89$265 to i32
  %temp730$271 = bitcast %__list* %__env$268 to %__list*
  %temp731$272 = getelementptr %__list, %__list* %temp730$271, i32 0, i32 1
  %__env$273 = load %__list*, %__list** %temp731$272
  %temp729$274 = bitcast %__list* %__env$273 to %__list*
  %__ctemp91$275 = bitcast i32 %__ctemp90$270 to i32
  %temp733$276 = bitcast %__list* %__env$273 to %__list*
  %temp734$277 = getelementptr %__list, %__list* %temp733$276, i32 0, i32 1
  %__env$278 = load %__list*, %__list** %temp734$277
  %temp732$279 = bitcast %__list* %__env$278 to %__list*
  %__ctemp92$280 = bitcast i32 %__ctemp91$275 to i32
  %temp736$281 = bitcast %__list* %__env$278 to %__list*
  %temp737$282 = getelementptr %__list, %__list* %temp736$281, i32 0, i32 1
  %__env$283 = load %__list*, %__list** %temp737$282
  %temp735$284 = bitcast %__list* %__env$283 to %__list*
  %__ctemp93$285 = bitcast i32 %__ctemp92$280 to i32
  %temp739$286 = bitcast %__list* %__env$283 to %__list*
  %temp740$287 = getelementptr %__list, %__list* %temp739$286, i32 0, i32 1
  %__env$288 = load %__list*, %__list** %temp740$287
  %temp738$289 = bitcast %__list* %__env$288 to %__list*
  %temp741$290 = bitcast i32 %__ctemp93$285 to i32
  ret i32 %temp741$290
}
