fun sum_arithmetic_sequence (A, B, N) =
  let
    fun loop (0, acc) = acc
      | loop (n, acc) = loop (n - 1, acc + A + (n - 1) * B)
  in
    loop (N, 0)
  end;

fun main () =
  let
    fun readTestCase () =
      let
        val input = String.tokens (fn c => c = #" ") (TextIO.inputLine TextIO.stdIn)
        val A = Int.fromString (List.nth (input, 0))
        val B = Int.fromString (List.nth (input, 1))
        val N = Int.fromString (List.nth (input, 2))
      in
        case (A, B, N) of
          (SOME a, SOME b, SOME n) =>
            let
              val sum = sum_arithmetic_sequence (a, b, n)
            in
              (a, b, n, sum)
            end
        | _ => readTestCase ()
      end
    val numCases = Int.fromString (TextIO.inputLine TextIO.stdIn)
    fun loop (0) = ()
      | loop (n) =
          let
            val (A, B, N, sum) = readTestCase ()
            val _ = print (Int.toString sum ^ " ")
          in
            loop (n - 1)
          end
  in
    case numCases of
      SOME cases => loop cases
    | NONE => ()
  end;

val _ = main ()
