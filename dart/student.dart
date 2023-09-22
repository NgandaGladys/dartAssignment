//create a private class called student and define attributes of that class, and create instances of that class

class _Student {
  String _name; // Private attribute
  int _age;     // Private attribute

  _Student(this._name, this._age);

  String get name => _name;
  int get age => _age;

  set name(String name) {
    _name = name;
  }

  set age(int age) {
    _age = age;
  }
}

void main() {
  _Student student1 = _Student('Alice', 20);
  _Student student2 = _Student('Bob', 22);

  print('Student 1: Name - ${student1.name}, Age - ${student1.age}');
  print('Student 2: Name - ${student2.name}, Age - ${student2.age}');

  student1.name = 'Alicia';
  student1.age = 21;

  print('Updated Student 1: Name - ${student1.name}, Age - ${student1.age}');
}
