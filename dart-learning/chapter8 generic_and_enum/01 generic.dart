/**
 * 范型
 */

// 范型可限定类型
void main() {
  var list1 = new List<int>();

  list1.add(1);
  // 范型限定只能添加整数类型
  // list1.add('1');

  var utils = new Utils<int>();
  utils.put(1);
}

// 类范型
class Utils<T> {
  T element;

  // 方法范型
  void put<T1>(T element) {
    this.element = element;
  }
}