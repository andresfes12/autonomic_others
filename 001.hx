class Main {
    static function main() {
        var a:Int = 5;
        var b:Int = 3;
        var resultado:Int = sumar(a, b);
        trace("La suma es: " + resultado);
    }

    static function sumar(a:Int, b:Int):Int {
        return a + b;
    }
}
