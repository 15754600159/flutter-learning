/**
 * mixins 实现多继承
 * 1. mixins的类不能有显式声明构造方法
 * 2. mixins的类只能继承自object
 */

void main() {
  var d = new D();

  d.a();
}

class A {
  void a() {
    print('a...');
  }
}

class B {
  void b() {
    print('b...');
  }
}

class C {
  void c() {
    print('c...');
  }
}

class D with A, B, C {

}