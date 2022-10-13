(* Result: 1 *)
let l = 1::(2::[]) in
(match l with
| [] -> 0
| h::t ->
        (match t with
        | [] -> 0
        | h::t -> h));;
