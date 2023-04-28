class student {
  student() { 
    grade = 0; 
  }
  float grade =0;
  void Grade() {
    if (grade > 80) {
      println("Good");
    }
    else {
      println("Study");
    }
  }
}

void setup() {
  student A;
  A = new student();
  float x = random(60, 100);
  A.grade = x;
  A.Grade();
  println("Grade: " + x);
}
