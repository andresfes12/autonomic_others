fun findMiddle list =
    let
        val sortedList = ListMergeSort.sort list
        val length = length sortedList
        val middleIndex = (length + 1) div 2
    in
        List.nth (sortedList, middleIndex)
    end

fun processCases [] = []
  | processCases (x::xs) =
    let
        val middle = findMiddle x
    in
        middle :: processCases xs
    end

fun printResults [] = ()
  | printResults (x::xs) =
    (print(Int.toString x ^ "\n"); printResults xs)

fun main () =
    let
        val numCases = valOf (TextIO.scanStream (Int.scan StringCvt.DEC)) stdIn
        val lines = List.tabulate (numCases, fn _ => valOf (TextIO.scanStream (TextIO.inputLine stdIn) StringCvt.DEC))
        val parsedLines = List.map (fn line => List.map Int.fromString (String.tokens (fn c => c = #" ") line)) lines
        val results = processCases parsedLines
    in
        printResults results
    end

val _ = main ()

