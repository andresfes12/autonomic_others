fun maxCandies isles =
    let
        fun maxCandies' [] = 0
          | maxCandies' [candy] = candy
          | maxCandies' (candy1::candy2::rest) =
                let
                    val maxC = maxCandies' (candy2::rest)
                    val maxJ = maxCandies' rest + candy1
                in
                    Int.max(maxC, maxJ)
                end
    in
        maxCandies' isles
    end;

fun printCandies [] = ()
  | printCandies (candy::rest) =
        (print(Int.toString candy ^ " "); printCandies rest);

fun solution [] = ()
  | solution (isles::rest) =
        let
            val maxCandies = maxCandies isles
        in
            (printCandies [maxCandies]; print "\n"; solution rest)
        end;

fun main () =
    let
        val numCases = valOf(Int.fromString(TextIO.inputLine TextIO.stdIn))
        val islesList = List.tabulate (numCases, fn _ => valOf(Int.fromString(TextIO.inputLine TextIO.stdIn)))
    in
        solution islesList
    end;

main ();
