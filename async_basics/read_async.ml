
open Async

let () =
  let contents = Reader.file_contents "/var/tmp/sut/test.txt" in
  match (Deferred.peek contents) with
    | None -> Stdio.printf "...\n"
    | Some s -> Stdio.printf "read: %s\n" s

;;