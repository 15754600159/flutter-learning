/**
 * 条件表达式
 * 1. if else
 * 2. switch case
 * 3. 三目运算符
 * 4. ??运算符
 */

void main() {
  bool isTrue = true;

  if (isTrue) {
    print('true');
  } else {
    print('false');
  }

  var a;
  // 若a为空，则把后面的值赋值给b；若a不为空，则a的值赋给b
  var b = a ?? 10;
  print(b);
}