open OUnit
open Problems

let suite = "Unit tests..." >::: [
    "test_last" >:: (fun () -> assert_equal (Some "d") (last ["a"; "b"; "c"; "d"]));
    "test_last_two" >:: (fun () -> assert_equal (Some ("c","d")) (last_two ["a"; "b"; "c"; "d"]));
    "test_at_some" >:: (fun () -> assert_equal (Some "c") (at 3 ["a"; "b"; "c"; "d"; "e"]));
    "test_at_none" >:: (fun () -> assert_equal None (at 3 ["a"]));
    "test_length" >:: (fun () -> assert_equal 3 (length ["a";"b";"c"]));
    "test_rev" >:: (fun () -> assert_equal ["c";"b";"a"] (rev ["a";"b";"c"]));
    "test_is_palindrome_t" >:: (fun () -> assert_equal true (is_palindrome ["a";"b";"c";"b";"a"]));
    "test_is_palindrome_f" >:: (fun () -> assert_equal false (is_palindrome ["a";"b";"c";"c";"a"]));
  ]

let _ =
  run_test_tt_main suite