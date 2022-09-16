void main(List<String> args) {
  var myList = List<String>.generate(100, (i) => 'Item $i');
  print(myList);
}
