/**
 * 计算属性：getter, setter
 * 1.
 */

void main() {
  var rect = new Rectangle();
  rect.height = 20;
  rect.width = 10;

  print(rect.area);
  rect.areaHeight = 30;
  print(rect.area);
 }

class Rectangle {
  num width, height;

//  num area() {
//    return width * height;
//  }

  // 计算属性
  num get area {
    return width * height;
  }
  void set areaHeight(value) {
    this.height = value;
  }
  // num get area => width * height;
  //     set area(value) {
  //       width = value / 20;
  //     }
}