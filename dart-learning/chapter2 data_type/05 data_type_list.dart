/**
 * 数组/集合类型
 * 1. 定义List的方式： 字面量、构造函数
 * 2. 声明不可变列表
 * 3. 范型定义List指定类型
 */

/**
 * 常用属性
 * length 长度
 * reversed 翻转
 * isEmpty 是否为空
 * isNotEmpty 是否不为空
 */

/**
 * 常用方法
 * add 增加
 * addAll 拼接数组
 * indexOf 查找 传入具体值
 * remove 删除 传入具体值
 * removeAt 删除 传入索引值
 * fillRange 修改
 * insert(index, value) 指定位置插入
 * insertAll(index, list) 指定位置插入List
 * toList 其他类型转换成List
 * join List转换成字符串
 * split 字符串转换成List
 * forEach
 * map
 * where 筛选
 * any
 * every
 */

/**
 * Set: 不重复的list
 * 1. 去重
 * 2. Set是没有顺序的集合，不能通过索引去获取值
 */

void main() {
  var list1 = [1, 2, 'dart'];
  print(list1);
  list1[1] = 3;
  print(list1);

  // 不可变列表
  var list2 = const [1, 2, 3];
  // list2[1] = 4;

  var list3 = new List();

  var list = ['hello', 'dart'];
  list.add('aaa');
  list.insert(1, 'java');
  print(list);

  var list4 = new List<String>();
  list4.add('张三');
  // list4.add(1);

  // reverse
  print(list1.reversed.toList());

  list1.addAll(['香蕉', '苹果']);

  // 遍历
  print('for loop ------');
  for (int i = 0; i < list1.length; i++) {
    print(list1[i]);
  }
  print('for in loop ------');
  for ( var o in list1) {
    print(o);
  }
  print('foreach loop ------');
  list1.forEach((val){
    print(val);
  });
}
