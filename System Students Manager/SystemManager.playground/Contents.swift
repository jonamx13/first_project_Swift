let math = Subject(name: "Math", teacherName: "Mr. Smith", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Spanish", teacherName: "Mrs. Meixueiro", level: .basic)

let s1 = Student(name: "John", age: 30, email: "new@email.com", subjects: [math, spanish], grades: [70.0, 80.0])
let s2 = AdvancedStudent(name: "Edward", age: 28, email: "advanced@email.com", subjects: [math, spanish], grades: [90.0, 60.0], extraPoints: 10.0)

let desc1 = s1.describe()
let desc2 = s2.describe()

print(desc1)
print(desc2)
