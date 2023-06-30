class Main {
    static function main() {
        var numTestCases:Int = Std.parseInt(sys.stdin.readLine());
        var testCases:Array<Array<Int>> = new Array<Array<Int>>();

        for (i in 0...numTestCases) {
            var line:String = sys.stdin.readLine();
            var isles:Array<Int> = line.split(" ").map(function(s:String) return Std.parseInt(s));
            testCases.push(isles);
        }

        for (testCase in testCases) {
            var maxCandies:Int = getMaxCandies(testCase, testCase.length);
            sys.stdout.write(maxCandies.toString());

            if (testCase != testCases[testCases.length - 1]) {
                sys.stdout.write(" ");
            }
        }

        sys.stdout.write("\n");
    }

    static function getMaxCandies(isles:Array<Int>, i:Int):Int {
        if (i <= 0) {
            return 0;
        } else if (i == 1) {
            return isles[0];
        } else {
            var maxCandiesWithoutJump:Int = getMaxCandies(isles, i - 1);
            var maxCandiesWithJump:Int = getMaxCandies(isles, i - 2) + isles[i - 1];
            return Math.max(maxCandiesWithoutJump, maxCandiesWithJump);
        }
    }
}
