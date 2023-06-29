fun generateArray() =
    let
        fun helper(0, arr) = arr
          | helper(n, arr) = helper(n - 1, Random.rand(1, 1000) :: arr)
    in
        helper(300, [])
    end;

fun findMinMax(arr) =
    let
        fun helper([], min, max) = (min, max)
          | helper(x::xs, min, max) =
                if x < min then helper(xs, x, max)
                else if x > max then helper(xs, min, x)
                else helper(xs, min, max)
    in
        helper(arr, hd(arr), hd(arr))
    end;

val arr = generateArray();
val (min, max) = findMinMax(arr);

print(Int.toString(min));
print("\n");

print(Int.toString(max));
print("\n");


