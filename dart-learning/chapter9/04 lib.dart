/**
 * 库引入的相关语法
 * 1. 库重命名
 * 2. 部分引入
 */

import 'lib/person.dart' as lib;
import 'lib/person1.dart' as lib1;
import 'lib/myFunc.dart' show getName;

void main() {
  var person = new lib.Person();

  getName();
}