//import 'dart:convert';
import 'dart:io';

void main() {
  print("Enter a sequence of comma-separated numbers:");
  String input = stdin.readLineSync() ?? "";
  List<int> numbers = parseInput(input);

  List<int> list = List.from(numbers);
  Tuple tuple = Tuple.fromList(numbers);

  print("List: $list");
  print("Tuple: $tuple");
}

List<int> parseInput(String input) {
  List<String> numberStrings = input.split(',');
  List<int> numbers = [];

  for (String numberString in numberStrings) {
    try {
      int number = int.parse(numberString.trim());
      numbers.add(number);
    } catch (e) {
      print("Invalid input: $numberString");
    }
  }

  return numbers;
}

class Tuple {
  final List<int> _elements;

  Tuple.fromList(List<int> elements) : _elements = elements;

  @override
  String toString() {
    return _elements.toString();
  }
}
