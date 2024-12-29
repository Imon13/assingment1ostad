void main() {

  String role = "Student";
  String name = "John Doe";
  int age = 20;
  String address = "123 Main Street";
  List<int> scores = [90, 85, 82];
  double totalScore = 0;
  for (int score in scores) {
    totalScore += score;
  }
  double averageScore = totalScore / scores.length;
  print("Student Information:\n");
  print("Role: $role");
  print("Name: $name");
  print("Age: $age");
  print("Address: $address");
  print("Average Score: ${averageScore.toStringAsFixed(1)}");
}
