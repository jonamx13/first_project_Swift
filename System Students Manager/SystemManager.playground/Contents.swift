let math = Subject(name: "Math", teacherName: "Mr. Smith", level: SubjectLevel.intermediate)
let spanish = Subject(name: "Spanish", teacherName: "Mrs. Meixueiro", level: .basic)
let biology = Subject(name: "Biology", teacherName: "Peter Parker", level: .intermediate)
let economy = Subject(name: "Economy", teacherName: "Harry Osborn", level: .intermediate)

let s1 = Student(name: "John", age: 30, email: "new@email.com", subjects: [], grades: [])
let s2 = AdvancedStudent(name: "Edward", age: 28, email: "advanced@email.com", subjects: [], grades: [], extraPoints: 10.0)

let service = StudentsManager(students: [], maxStudents: 3)
do {
    try service.insertStudent(s1)
    try service.insertStudent(s2)
    try service.insertStudent(s2)
    try service.insertStudent(s2)
} catch {
    print(error.localizedDescription)
}

try service.assignSubjectToStudent(subject: math, grade: 80, student: s1)
try service.assignSubjectToStudent(subject: spanish, grade: 70, student: s1)
try service.assignSubjectToStudent(subject: biology, grade: 90, student: s1)

try service.assignSubjectToStudent(subject: math, grade: 90, student: s2)
try service.assignSubjectToStudent(subject: spanish, grade: 60, student: s2)
try service.assignSubjectToStudent(subject: economy, grade: 60, student: s2)

try service.generateStudentsReport()


let average = service.getAverages()
let subjects = service.getCoursedSubjects()
