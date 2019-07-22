/**
 * 类型转换
 * 1. 解决转换时报错(空值)：try catch
 * 2. isEmpty: 判断字符串是否为空 ''
 * 3. ==null: 判断是否值为空
 * 4. 0/0 为 NaN：isNaN为true
 */

void main() {
  // String -> Int
  String str = '123';
  var myNum = int.parse(str);

  // String -> double
  String str1 = '12.1';
  var myDouble = double.parse(str1);

  // error handle
  String price = '';
  try {
    var myNum1 = double.parse(price);
  } catch(err) {
    print(err);
  }

  // numble -> string
  var myNum2 = 12;
  var str2 = myNum2.toString();


}