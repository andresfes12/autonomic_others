BEGIN {
  farenjai[1] = 32
  farenjai[2] = 68
  farenjai[3] = 86
  farenjai[4] = 104
  farenjai[5] = 122
}

function convert_to_celsius(fahrenheit) {
  celsius = ((fahrenheit - 32) * 5/9)
  return celsius
}

for (i = 1; i <= 5; i++) {
  celsius_temp = convert_to_celsius(farenjai[i])
  celsius[i] = celsius_temp
}

for (i = 1; i <= 5; i++) {
  print celsius[i]
}

