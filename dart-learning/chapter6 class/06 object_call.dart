void main() {
  var person = new Person();

  person('Test', 30);
}

class Person {
  String name;
  int age;

  // 示例能作为方法执行
  void call(String name, int age) {
    print('Name is $name, age is $age');
  }
}