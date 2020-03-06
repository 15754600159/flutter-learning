/**
 * 覆写操作符
 */

void main() {
  var person1 = new Person(18);
  var person2 = new Person(16);

  print(person1 > person2);
}

class Person {
  int age;

  Person(this.age);

  bool operator > (Person person) {
    return this.age > person.age;
  }
}