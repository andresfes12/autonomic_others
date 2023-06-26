fun min_of_three(a, b, c) =
    if a <= b andalso a <= c then
        a
    else if b <= a andalso b <= c then
        b
    else
        c;

fun compare_arrays([], [], []) = []
  | compare_arrays(x::xs, y::ys, z::zs) =
        min_of_three(x, y, z) :: compare_arrays(xs, ys, zs);

fun main () =
    let
        val a = [3, 7, 12, 1, 2];
        val b = [2, 3, 15, 8, 10];
        val c = [5, 2, 9, 11, 4];
        val mins = compare_arrays(a, b, c);
    in
        List.app (fn x => print (Int.toString x ^ " ")) mins;
        print "\n"
    end;

main ();
