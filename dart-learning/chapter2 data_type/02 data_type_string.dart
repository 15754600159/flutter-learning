/**
 * 1. 单、双引号一致；
 * 2. 三个单/双引号里面可以写多行字符串；
 * 3. 字符串拼接：+
 * 4. 字符串模版：$ {}
 */

void main() {
  String str1 = 'hello';
  String str2 = '''Hello
                world''';
  print(str2);

  String str3 = 'hello \n world';
  String str4 = r'hello \n world';
  print(str3);
  print(str4);

  String str5 = 'This is my favorite language';
  print(str5 + ' New');
  print(str5 * 4);
  print(str5 == str4);
  print(str5[1]);


  // 字符串模版
  int a = 1;
  int b = 2;
  print('a + b = ${a + b}');
  print('a = $a');

  print(str5.length);
  print(str5.isNotEmpty);
}