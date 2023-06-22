class Main {
  static function main() {
    var sequence1:Array<Int> = [1, 2, 3, 4, 5];
    var sequence2:Array<Int> = [6, 7, 8, 9, 10];
    var result:Array<Int> = [];

    for (i in 0...sequence1.length) {
      var sum:Int = sequence1[i] + sequence2[i];
      result.push(sum);
    }

    trace(result);
  }
}
