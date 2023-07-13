void main() {
  List<int> list1 = [5, 2, 7, 1];
  List<int> list2 = [3, 6, 4, 9];

  for (int i = 0; i < list1.length; i++) {
    int minValue = list1[i] < list2[i] ? list1[i] : list2[i];
    print('Posición ${i + 1}: $minValue');
  }
}
