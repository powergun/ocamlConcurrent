
open Async
open Core

let uppercase_file filename =
  Reader.file_contents filename
  >>= fun text ->
  Writer.save filename ~contents:(String.uppercase text)
;;

let count_lines filename =
  let%bind text = Reader.file_contents filename in
  return (List.length (String.split text ~on:'\n'))
;;

let () =
  let n = count_lines "/var/tmp/sut/test.txt" in 
  Stdio.printf "num: %s\n" n;
;;
