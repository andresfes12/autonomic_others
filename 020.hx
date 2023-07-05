class Main {
    static function main() {
        var cases:Int = Std.parseInt(sys.stdin.readLine());
        
        for (i in 0...cases) {
            var line:String = sys.stdin.readLine();
            var vowels:Int = countVowels(line);
            sys.stdout.write(vowels + " ");
        }
        
        sys.stdout.write("\n");
    }
    
    static function countVowels(line:String):Int {
        var lowercaseLine:String = line.toLowerCase();
        var count:Int = 0;
        
        for (i in 0...lowercaseLine.length) {
            var char:String = lowercaseLine.charAt(i);
            
            if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "y") {
                count++;
            }
        }
        
        return count;
    }
}
