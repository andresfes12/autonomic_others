class Main {
    static function main() {
        var numCases = Std.parseInt(sys.stdin.readLine());
        for (i in 0...numCases) {
            var input = sys.stdin.readLine();
            var inputList = input.split(" ");
            
            var a = Std.parseInt(inputList[0]);
            var b = Std.parseInt(inputList[1]);
            var c = Std.parseInt(inputList[2]);

            if (a <= b && a <= c) {
                sys.println(a);
            } else if (b <= a && b <= c) {
                sys.println(b);
            } else {
                sys.println(c);
            }
        }
    }
}
