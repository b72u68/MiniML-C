(* Result: 1 *)
let l = (1, 2)::[] in
match l with
| [] -> 0
| h::t -> let (fst, snd) = h in fst
;;
