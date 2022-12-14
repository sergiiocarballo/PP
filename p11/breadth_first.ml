
open G_tree;;

let rec breadth_first = function
    Gt (x, []) -> [x]
  | Gt (x, (Gt (y, t2))::t1) -> x :: breadth_first (Gt (y, t1@t2));;

let rec breadth_first_t gt =
   let rec aux acum = function
         Gt (x, []) -> List.rev (x::acum)
        |Gt (x, (Gt (y, t2))::t1) -> aux (x::acum) (Gt (y, List.rev_append (List.rev t1) t2))
   in aux [] gt;;

let t2 =
Gt (2,[Gt (7, [Gt (2, []); Gt (10, []);
Gt (6, [Gt (5, []); Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])]);
Gt (5, [Gt (9, [Gt (4, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [Gt (11, [])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])])]);;



