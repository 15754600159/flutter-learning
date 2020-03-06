/**
 * 接口
 * 1. dart接口没有interface关键字，就是抽象类
 * 2. 用implements关键字进行实现；
 * 3. 需要实现抽象类里面的所有属性和方法；
 * 4. 实现多个接口
 */

void main() {

}

class Person {
  String name;

  int get age => 18;

  void run() {
    print('run...');
  }
}

// 类其实和接口一致，用抽象类更像接口
class Student implements Person {
  @override
  String name;

  @override
  int get age => 15;

  @override
  void run() {
    // something
  }

}

// 实现多个接口
// class A implements B, C {

// }