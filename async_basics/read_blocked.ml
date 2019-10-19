open Core;;

(* 
http://dev.realworldocaml.org/concurrent-programming.html
*)
let () =
  let testfile = "/var/tmp/sut/test.txt" in
  (* MY NOTE: the example in the book is not working. 
  I have to replace it with input_line *)
  let _ = In_channel.input_line In_channel.stdin in
  Out_channel.write_all testfile ~data:"This is only a test.\n";
  let _ = In_channel.read_all testfile in
  ()
;;
