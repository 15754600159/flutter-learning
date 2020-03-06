/**
 * 类的静态属性
 * 1. 静态方法不能访问非静态成员，非静态方法可以访问静态成员；
 */

void main() {
  var person = new Person();
  person.say();
}

class Person {
  static bool alive = true;
  int age = 19;

  void say() {
    print('alive is $alive, age is $age');
  }
}