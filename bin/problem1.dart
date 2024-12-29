abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
  }

  double calculateAverageScore() {
    double total = 0;
    for (var score in courseScores) {
      total += score;
    }
    return courseScores.isEmpty ? 0.0 : total / courseScores.length;
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

void main() {
  var student = Student(
    'John Doe',
    20,
    '123 Main St',
    'S123',
    'A',
    [90, 85, 82],
  );

  var teacher = Teacher(
    'Mrs. Smith',
    35,
    '456 Oak St',
    'T456',
    ['Math', 'English', 'Bangla'],
  );

  print('Student Information:');
  student.displayRole();
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Average Score: ${student.calculateAverageScore()}');
  print('');

  print('Teacher Information:');
  teacher.displayRole();
  print('Name: ${teacher.name}');
  print('Age: ${teacher.age}');
  print('Address: ${teacher.address}');
  teacher.displayCoursesTaught();
}
