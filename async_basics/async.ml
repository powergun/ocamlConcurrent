open Core;;

let () =
  let testfile = "/var/tmp/sut/test.txt" in
  let _ = In_channel.read_all in
  Out_channel.write_all testfile ~data:"This is only a test.";
  let _ = In_channel.read_all testfile in
  ()
;;
