open Containers
open OUnit2
open Ocaml_starter

let tests =
  "test suite for library"
  >::: [
         ("greeting" >:: fun _ -> assert_equal (Result.Ok "world") (Lib.name ()));
       ]

let _ = run_test_tt_main tests
