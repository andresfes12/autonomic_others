class Main {
    static function fahrenheitToCelsius(fahrenheit: Float): Float {
        return (fahrenheit - 32) * 5 / 9;
    }

    static function convertTemperatures(temperatures: Array<Float>): Void {
        for (temp in temperatures) {
            var celsius = fahrenheitToCelsius(temp);
            trace(celsius);
        }
    }

    static function main() {
        var numTemps = Std.parseInt(sys.io.readLine());
        var temperatures = new Array<Float>();
        for (i in 0...numTemps) {
            var temp = Std.parseFloat(sys.io.readLine());
            temperatures.push(temp);
        }
        convertTemperatures(temperatures);
    }
}

