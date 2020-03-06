/**
 * dynamic、var、Object三者区别
 * 1. dynamic：动态类型，运行过程中数据类型可以修改
 * 2. var：动态类型，运行过程中数据类型不可修改，只能是第一次推断的数据类型
 * 3. Object：静态检查，只能调用Object上有的方法
 */

void main() {
  print('dynamic: ----------------');
  dynamic b = 20;
  b = 'JavaScript';
  print(b);
  print(b.runtimeType);

  print('var: ----------------');
  var a = 123;
  print(a);
  print(a.runtimeType);
  // a = '111'; // 报错

  print('Object: ----------------');
  Object c = '11';
  print(c);
  print(c.runtimeType);
}