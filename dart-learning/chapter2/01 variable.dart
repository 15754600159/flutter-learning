/**
 * 1. var声明的变量，dart会自动推断其类型，不能给变量赋不同类型的值；
 * 2. const值不变，一开始就得赋值，final可以开始不赋值，只能赋值一次；
 * 3. final是运行时常量，惰性初始化，即在运行时第一次使用前才初始化；
 */

void main() {
  // var 声明一般变量
  var a;
  print(a);

  a = 10;
  print(a);

  // final 定义的变量只能被赋值一次
  final b = 10;
  // b = 15;

  // const 声明常量
  const d = 20;
  // d = 50;

  // 报错
  // const time = new DateTime.now();
  // 不报错
  final time = new DateTime.now();
}