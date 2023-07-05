function countVowels(line) {
  line = tolower(line)
  count = 0
  for (i = 1; i <= length(line); i++) {
    char = substr(line, i, 1)
    if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "y") {
      count++
    }
  }
  return count
}

getline cases
for (i = 1; i <= cases; i++) {
  getline line
  vowels = countVowels(line)
  printf "%d ", vowels
}
print ""
