class Student {
  String name;
  int age;
  List<int> grades;
  Student(this.name, this.age, [this.grades = const []]);
  void addGrade(int grade) {
    grades.add(grade);
  }
  double getAverageGrade() {
    if (grades.isEmpty) {
      return 0;
    }
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
  @override
  String toString() {
    return 'Student{name: $name, age: $age, grades: $grades}';
  }
}
void main() {
  Student student1 = Student('John Doe', 18, [80, 90, 70]);
  Student student2 = Student('Jane Doe', 20, [95, 85, 92]);
  print(student1); 
  print(student2); 
  student1.addGrade(85);
  print(student1); 
  print(student1.getAverageGrade()); 
  print(student2.getAverageGrade()); 
}