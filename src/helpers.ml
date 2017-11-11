(* Helper functions *)

let bind opt fn = function
  | None -> ()
  | Some x -> fn x

let (@@) fn x = fn x
let (|>) x fn = fn x
let (>>=) = bind
