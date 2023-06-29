arreglo = []
for i in [0..299]
  numero = Math.floor(Math.random() * 1000) + 1
  arreglo.push(numero)

menor = arreglo[0]
mayor = arreglo[0]

for num in arreglo
  menor = num if num < menor
  mayor = num if num > mayor

console.log(" #{menor}")
console.log(" #{mayor}")

