/**
 * 1. int: 整形； double: 浮点型；
 * 2. doubel被赋值为整形的时候，dart会自动在后面加上.0；
 * 3. + - * / ～/ %
 */

void main() {
  num a = 10;
  a = 12.5;

  // 整形不能被赋值为浮点型
  int b = 20;
  // b = 20.5;

  // 浮点型不能被赋值为整形
  double c = 10.5;
  // c = 30;

  print(b + c);
  print(b - c);
  print(b * c);
  print(b / c);
  // 取整除完的结果
  print(b ~/ c);
  print(b % c);

  print(b.isEven);
  print(b.isOdd);
}
