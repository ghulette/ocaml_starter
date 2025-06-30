open Containers
open Printf

open Result.Infix

let main =
    Ocaml_starter.Lib.name () >>= fun greet ->
    printf "Hello, %s!\n" greet;
    Result.Ok 0
    
let _ =
    main >>= fun ret ->
    exit ret
