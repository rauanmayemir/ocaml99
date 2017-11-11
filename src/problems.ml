(* 99 problems *)

(* Problem 1: Last element of a list *)
let rec last = function
  | [] -> None
  | [hd] -> Some hd
  | _ :: tl -> last tl

(* Problem 2: Last two elements of a list *)
let rec last_two = function
  | [] | [_] -> None
  | [x;y] -> Some (x,y)
  | _ :: tl -> last_two tl

(* Problem 3: k'th element of a list *)
let rec at k = function
  | [] -> None
  | hd :: tl -> if k = 1 then Some hd else at (k-1) tl

(* Problem 4: length of a list *)
let length list =
  let rec length_acc acc = function
    | [] -> acc
    | _ :: tl -> length_acc (acc + 1) tl
  in length_acc 0 list

(* Problem 5: reversing a list *)
let rev list =
  let rec rev_acc acc = function
    | [] -> acc
    | hd :: tl -> rev_acc (hd :: acc) tl
  in rev_acc [] list

(* Problem 6: is list a palindrome *)
let is_palindrome list = list = rev list
