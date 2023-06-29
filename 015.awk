BEGIN {
  srand()
  for (i = 0; i < 300; i++) {
    numero = int(rand() * 1000) + 1
    arreglo[i] = numero
  }
}

{
  menor = arreglo[0]
  mayor = arreglo[0]
  
  for (i in arreglo) {
    if (arreglo[i] < menor) {
      menor = arreglo[i]
    }
    
    if (arreglo[i] > mayor) {
      mayor = arreglo[i]
    }
  }
}

END {
  print  menor
  print  mayor
}


