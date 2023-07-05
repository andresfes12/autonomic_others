fun countVowels line =
    let
        val lowercaseLine = String.map Char.toLower line
        val count = ref 0
        fun isVowel c = List.exists (fn x => x = c) ["a", "e", "i", "o", "u", "y"]
    in
        String.map (fn c =>
            if isVowel (Char.toString c) then
                (count := !count + 1; c)
            else
                c
        ) lowercaseLine;
        !count
    end;

fun main () =
    let
        val cases = TextIO.inputLine TextIO.stdIn |> valOf |> String.trim |> Int.fromString |> valOf
        fun loop 0 = ()
          | loop n =
            let
                val line = TextIO.inputLine TextIO.stdIn |> valOf |> String.trim
                val vowels = countVowels line
            in
                print (Int.toString vowels ^ " ");
                loop (n - 1)
            end
    in
        loop cases;
        print "\n"
    end;

val _ = main ();
