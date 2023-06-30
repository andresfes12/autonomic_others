fun fahrenheit_to_celsius (fahrenheit : real) : real =
  (fahrenheit - 32.0) * (5.0 / 9.0)

fun convert_temperatures (temperatures : real list) : unit =
  let
    fun convert_temp (fahrenheit : real) : unit =
      let
        val celsius = fahrenheit_to_celsius fahrenheit
      in
        print (Real.toString celsius ^ " ")
      end
  in
    List.app convert_temp temperatures;
    print "\n"
  end

fun read_temperatures (n : int) : real list =
  let
    fun read_temp (0, temperatures) = temperatures
      | read_temp (n, temperatures) =
          let
            val fahrenheit = Real.fromString (TextIO.inputLine TextIO.stdIn)
          in
            case fahrenheit of
              SOME f => read_temp (n - 1, f :: temperatures)
            | NONE => read_temp (n, temperatures)
          end
  in
    read_temp (n, [])
  end

fun main () =
  let
    val num_temperatures = Int.fromString (TextIO.inputLine TextIO.stdIn)
    val temperatures = read_temperatures (Option.valOf num_temperatures)
  in
    convert_temperatures temperatures
  end

val _ = main ()
