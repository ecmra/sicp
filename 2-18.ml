let reverse l =
  let rec aux l acc =
  match l with
  | [] -> acc
  | hd::tail -> aux tail (hd::acc)
  in
  aux l []
;;




  
