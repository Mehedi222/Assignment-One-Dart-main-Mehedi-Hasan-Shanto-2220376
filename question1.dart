// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐

// 1. Variables of different data types
String name = "";
int age = 0;
double height = 0.0;
bool isStudent = false;

// 2. calculateBMI function
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// 3. getGrade function
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  // Initialize variables
  name = "John Doe";
  age = 25;
  height = 5.9; // in feet
  isStudent = true;

  double weight = 72.8; // in kg
  double heightInMeters = height * 0.3048; // feet -> meters
  int score = 85;

  // Calculate BMI (rounded to 1 decimal) and grade
  double bmi = double.parse(
    calculateBMI(weight, heightInMeters).toStringAsFixed(1),
  );
  String grade = getGrade(score);

  // Display results
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}