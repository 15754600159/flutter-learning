/**
 * 继承
 * 1. 覆写父类方法
 * 2. 私有属性不能继承
 * 3. 子类调用父类方法
 */

void main() {
  var student = new Student();
  student.study();

  student.name = 'Tom';
  student.age = 15;
  student.isAdult;
  student.run();
  // 私有属性不能继承
  // student._birthday;
}

class Person {
  String name;
  int age;
  String _birthday;

  bool get isAdult => age > 18;

  void run() {
    print('Person run...');
  }
}

class Student extends Person {
  void study() {
    print('Student study...');
  }

  // 覆写父类方法
  @override
  bool get isAdult => age > 15;

  // 子类调用父类方法
  @override
  void run() {
    super.run();
    print('student run');
  }
}