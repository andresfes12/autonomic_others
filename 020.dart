import 'dart:io';

int countVowels(String line) {
  line = line.toLowerCase();
  int count = 0;
  
  for (var i = 0; i < line.length; i++) {
    var char = line[i];
    
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u' || char == 'y') {
      count++;
    }
  }
  
  return count;
}

void main() {
  var cases = int.parse(stdin.readLineSync()!);
  
  for (var i = 0; i < cases; i++) {
    var line = stdin.readLineSync()!;
    var vowels = countVowels(line);
    stdout.write('$vowels ');
  }
  
  stdout.write('\n');
}
