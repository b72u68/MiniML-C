(* Result: 42 *)
let f (x: int) = x + 1 in
    let f (x: int) = x + 2 in
    let f (x: int) = x + 3 in
    let f_this (f: int -> int) = fun (x: int) -> f x in
    f_this f 39
;;
