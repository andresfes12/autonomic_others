class Main {
    static function main() {
        var arrays:Array<Array<Int>> = [
            [5, 2, 7],
            [10, 4, 8],
            [1, 6, 3],
            [9, 2, 5]
        ];
        
        for (array in arrays) {
            var sorted = array.sort();
            var middleIndex = Math.floor(sorted.length / 2);
            var middleValue = sorted[middleIndex];
            trace(middleValue);
        }
    }
}
