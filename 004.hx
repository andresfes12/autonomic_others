import sys.io.File;

class Main {
    static function main() {
        var lines = File.getContent("input.txt").split("\n");
        var n = Std.parseInt(lines[0]);
        var data = lines[1].split(" ").map(Std.parseInt);

        var result = minOfTwo(n, data);
        var output = result.map(Std.string).join(" ");
        File.saveContent("output.txt", output);
    }

    static function minOfTwo(n:Int, data:Array<Int>):Array<Int> {
        var result:Array<Int> = [];
        for (i in 0...n) {
            var nums = data.slice(i * 2, i * 2 + 2);
            var min = Math.min(nums[0], nums[1]);
            result.push(min);
        }
        return result;
    }
}
