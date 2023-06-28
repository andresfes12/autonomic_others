BEGIN {
    num_cases = 1;

    function round(number) {
        return int(number + 0.5);
    }

    function process_numbers() {
        getline number < "-";
        rounded = round(number);
        print rounded;
    }

    for (i = 1; i <= num_cases; i++) {
        process_numbers();
    }
}

