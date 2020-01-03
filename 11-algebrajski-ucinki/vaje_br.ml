let print s = perform (Print s)

let mute = handler
  | effect (Print s) k -> k ()
  | v -> v

let shift_text_right n =
  let rec make_spaces n =
    if n = 0
    then ""
    else " " ^ make_spaces (n - 1)
  in
  handler
  | effect (Print s) k -> print (make_spaces n ^ s); k ()

let underline =
  let crtice s =
    let rec crtic n = if n = 0 then "" else "-" ^ crtic (n - 1) in
    crtic (string_length s)
  in
  handler
  | effect (Print s) k -> print s; print (crtice s); k ()


let to_option = handler
  | effect (Error msg) k -> None
  | v -> Some v

let test_fun () =
  print "A bit here";
  with shift_text_right 4 handle (
    with underline handle (
      print "A bit there";
      print "We are done";
      28537
    )
  )

let test_2 () =
  with to_option handle (
    perform (Error "PANICCC!!!11!!")
  )
