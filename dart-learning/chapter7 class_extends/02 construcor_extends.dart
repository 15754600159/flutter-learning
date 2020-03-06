/**
 * 构造函数的继承，super的使用
 */

void main() {
  var student = new Student('Tom', 'Male', 2);

  print(student.name);
  print(student.age);
}

class Person {
  String name;

  Person(this.name);
}

// 父类的构造方法有参数时，子类中得手动调用
class Student extends Person {
  int age;
  final gender;

  // age为可选参数
  Student(String name, this.gender, [this.age = 1]): super(name) {
    print('构造方法体');
  }
}