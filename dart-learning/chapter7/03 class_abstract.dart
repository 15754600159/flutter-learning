/**
 * 抽象类：主要用于约束子类
 * 1. dart中没有单独的抽象方法；
 * 2. 抽象类不能被实例化，只有继承它的子类可以；
 * 3. 子类继抽象类必须实现里面的抽象方法（抽象类里面可以有普通方法）；
 */

void main() {
  var person = new Student();
  person.run();
}

abstract class Person {
  void run();
}

class Student extends Person {
  @override
  void run() {
    print('run...');
  }

}