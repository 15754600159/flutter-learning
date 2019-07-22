/**
 * 构造函数的继承，super的使用
 */

void main() {
  var student = new Student('Tom', 'Male');

  print(student.name);
}

class Person {
  String name;

  Person(this.name);
}

// 父类的构造方法有参数时，子类中得手动调用
class Student extends Person {
  int age;
  final gender;

  Student(String name, String gender): gender = gender, super(name);
}