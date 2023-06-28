import sys.Sys;

class Main {
  static function main() {
    var numCases:Int = Sys.stdin().readLine().parseInt();
    
    for (i in 0...numCases) {
      var numbers:Array<Float> = Sys.stdin().readLine().split(" ").map(Float.parseFloat);
      var result:Int = roundNumber(numbers[0] / numbers[1]);
      Sys.stdout().write(result.toString() + " ");
    }
    
    Sys.stdout().flush();
  }
  
  static function roundNumber(number:Float):Int {
    if (number >= 0) {
      return Math.floor(number + 0.5);
    } else {
      return Math.ceil(number - 0.5);
    }
  }
}

