class Main {
    static function main() {
        var arreglo:Array<Int> = [];
        for (i in 0...300) {
            var numero:Int = Math.random() * 1000 + 1;
            arreglo.push(numero);
        }

        var menor:Int = arreglo[0];
        var mayor:Int = arreglo[0];

        for (num in arreglo) {
            if (num < menor) {
                menor = num;
            }

            if (num > mayor) {
                mayor = num;
            }
        }

        trace(menor);
        trace(mayor);
    }
}


