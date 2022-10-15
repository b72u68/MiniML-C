(* Result: 40 *)
let f (x: int) = x + 1 in
    let f_this = fun (x: int) -> f x in
    f_this 39
;;
