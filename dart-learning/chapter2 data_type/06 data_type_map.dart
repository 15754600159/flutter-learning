/**
 * 字典类型
 * 1. key类型不限：字符串、数值、布偶、数组、字典
 * 2. 两种声明方式：字面量、构造函数
 * 3. 不可变Map
 * 4. Map取值只能用[]
 */

/**
 * 常用属性
 * keys 获取所有的key值
 * values 获取所有的value值
 * isEmpty 是否为空
 * inNotEmpty 是否不为空
 */

/**
 * 常用方法
 * remove(key) 删除指定key的数据
 * addAll 合并字典 增加属性
 * containsValue 查看字典是否有某个值
 * forEach
 * map
 * where
 * any
 * every
 */

void main() {
  var map1 = {'first': 'dart', 1: true};
  print(map1);
  print(map1['first']);

  // 不可变map
  var map2 = const {'first': 'dart', 1: true};

  var map3 = new Map();

  print(map1.keys);
  print(map1.values);

  // 遍历
  print('遍历------------');
  map1.forEach((key, value) {
    print('$key: $value');
  });
  Map map4 = map1.map((key, value) {
    return MapEntry(value, key);
  });
  print('key value调换：$map4');
}