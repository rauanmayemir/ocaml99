open Helpers
open Problems

(* Problem 1: Last *)
let _ = last ["a"; "b"; "c"; "d"] |> function
  | None -> ()
  | Some x -> Printf.printf "[problem 1] last of [a; b; c; d]: %s\n" x

(* Problem 2: Last two *)
let _ = last_two ["a"; "b"; "c"; "d"] |> function
  | None -> ()
  | Some (x,y) -> Printf.printf "[problem 2] last two of [a; b; c; d]: %s %s\n" x y

(* Problem 3: k'th element *)
let _ = at 3 ["a"; "b"; "c"; "d"; "e"] |> function
  | None -> ()
  | Some (x) -> Printf.printf "[problem 3] 3rd element of [a; b; c; d; e]: %s\n" x

(* Problem 4: length *)
let _ = length ["a";"b";"c"]
  |> Printf.printf "[problem 4] length of [a;b;c]: %d\n"

(* Problem 5: rev *)
let _ = rev ["a";"b";"c"]
  |> String.concat ","
  |> Printf.printf "[problem 5] reverse of [a;b;c]: %s\n"

(* Problem 6: is_palindrome *)
let _ = is_palindrome ["a";"b";"c"] |> function
  | false -> Printf.printf "[problem 6] [a;b;c] is not a palindrome\n"
  | true -> Printf.printf "[problem 6] [a;b;c] is a palindrome\n"

let _ = is_palindrome ["a";"b";"c";"b";"a"] |> function
  | false -> Printf.printf "[problem 6] [a;b;c;b;a] is not a palindrome\n"
  | true -> Printf.printf "[problem 6] [a;b;c;b;a] is a palindrome\n"
