/**
 * 函数
 * 1. 定义
 * 2. 作用域
 * 3. 返回类型、参数类型
 * 4. 可选参数：放在参数最后
 * 5. 默认参数
 * 6. 命名参数
 * 7. 箭头函数
 * 8. 匿名方法
 * 9. 自执行函数
 * 10. 闭包
 */

void main() {
  print(getPerson("zhangsan",));
  print(getPerson1("zhangsan", sex: '女', age: 18));

  // 箭头函数
  List list = ['a', 'b', 'c'];
  list.forEach((value) => print(value));
  // 匿名方法
  list.forEach((value){
    print(value);
  });
}

// 返回类型、参数类型、可选参数、默认参数
String getPerson(String name, [int age, String sex = '男']) {
  return "name = $name, age = $age, sex = $sex";
}

// 命名参数
String getPerson1(String name, {int age, String sex = '男'}) {
  return "name = $name, age = $age, sex = $sex";
}