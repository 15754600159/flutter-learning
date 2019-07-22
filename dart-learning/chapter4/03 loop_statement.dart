/**
 * 循环语句
 * 1. for循环
 * 2. while循环
 * 3. do while循环
 * 4. break:
 *    1. 跳出switch结构和以上循环语句
 *    2. 只能向外跳出一层
 * 5. continue: 结束本次循环
 */

void main() {

  for (int i = 1; i < 10; i++) {
    print(i);
  }

  int j = 1;
  while(j<10) {
    j++;
    print(j);
  }
}