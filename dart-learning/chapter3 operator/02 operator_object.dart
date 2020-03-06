/**
 * 对象操作符
 * 1. ？ 条件运算符: 若属为空，则不调用/取值
 * 2. as 类型转换
 * 3. is 类型判断
 * 4. .. 级联操作（连缀）
 */

// ?. as is is!
void main() {

  // 条件运算符
  Person person;
  person?.work();

  // .. 级联操作符，返回操作对象
  var person1 = new Person();
  person1..name = 'Tom'
        ..age = 20
        ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print('Name is $name, age is $age, he is working...');
  }
}