let math = Subject(name: "Math", teacherName: "Mr. Smith", minimumGrade: 70)

let s1 = Student(name: "John", age: 30, email: "new@email.com", subjects: [math], grades: [80.0])
let s2 = AdvancedStudent(name: "Edward", age: 28, email: "advanced@email.com", subjects: [math], grades: [90.0], extraPoints: 10.0)

let desc1 = s1.studentDescription()
let desc2 = s2.studentDescription()

print(desc1)
print(desc2)
