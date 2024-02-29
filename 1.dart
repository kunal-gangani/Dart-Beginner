import 'dart:io';
class Calc{
  int? num1;
  int? num2;
  void add(){
    print("Enter Number 1 : ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter Number 2 : ");
    num2 = int.parse(stdin.readLineSync()!);
    print("Sum is ${num1 + num2}");
  }
  void subtract(){
    print("Subtraction is ${num1 - num2}");
  }
}
void main(){
  Calc c = Calc();
  c.add();
  c.subtract();
}