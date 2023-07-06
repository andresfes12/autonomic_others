import sys.io.Console;

class ArithmeticSequence {
  static function sumArithmeticSequence(A:Int, B:Int, N:Int):Void {
    var sum:Int = 0;
    for (i in 0...N) {
      var term:Int = A + i*B;
      sum += term;
      Console.write(term + " ");
    }
    Console.write("\n");
  }

  static function main():Void {
    Console.print("Enter the number of test cases: ");
    var numCases:Int = Std.parseInt(Console.readLine());

    for (i in 1...numCases) {
      Console.print("Enter the values for test case " + i + ": ");
      var input:Array<Int> = Console.readLine().split(" ").map(Std.parseInt);
      var A:Int = input[0];
      var B:Int = input[1];
      var N:Int = input[2];
      sumArithmeticSequence(A, B, N);
    }
  }
}
