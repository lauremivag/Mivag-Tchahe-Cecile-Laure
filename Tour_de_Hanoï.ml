let rec hanoi_aux n source target auxiliary =
  if n = 1 then
    print_endline (source ^ " -> " ^ target)
  else begin
    hanoi_aux (n-1) source auxiliary target;
    print_endline (source ^ " -> " ^ target);
    hanoi_aux (n-1) auxiliary target source
  end

let hanoi n =
  hanoi_aux n "A" "C" "B"

let () =
  let start_time = Sys.time () in
  hanoi 3;  (* Vous pouvez remplacer 3 par le nombre de disques initial souhaité *)
  let end_time = Sys.time () in
  let execution_time = end_time -. start_time in
  Printf.printf "Temps d'exécution : %f secondes\n" execution_time
