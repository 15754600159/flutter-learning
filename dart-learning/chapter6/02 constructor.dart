/**
 * 构造方法
 * 1. 名称和类名一致的方法
 * 2. 简写构造函数
 * 3. 命名构造函数
 * 4. 初始化列表： 在构造函数之前的赋值操作
 */

void main() {
  var person = new Person('Tom', 20);
  person.name = 'Tom';
  person.age = 20;

  print(person.name);
  person.work();

  var person1 = new Person.now();
}

class Person {
  String name;
  int age;
  // final String gender;

  // 构造函数
  Person(String name, int age): name = 'xiaoming', age = 19 {
    this.name = name;
    this.age = age;
  }

  // 简写
  // Person(this.name, this.age);

  // 命名构造函数
  Person.now() {
    print('我是命名构造函数');
  }

  // 初始化列表
  // Person(): name = 'xiaoming', age = 19 {

  // }

  void work() {
    print('Name is $name, age is $age, he is working...');
  }
}