/**
 * Dart所有的东西都是对象，所有的对象都继承自Object
 * Dart是一门使用类和单继承的面向对象的语言
 * 1. 私有属性/方法：前面加_ 需要将相关类抽离成单独文件
 *
 */

void main() {
  var person = new Person();
  person.name = 'Tom';
  // 私有
  // person._age = 20;
  // 不可变
  // person.address = 'US';

  print(person.name);
  person.work();
}

class Person {
  String name;
  // 下划线表示私有
  int _age;
  // 不可变
  final String address = 'china';

  void work() {
    // 也可以 ${this.name}
    print('Name is $name, age is $_age, he is working...');
  }
}