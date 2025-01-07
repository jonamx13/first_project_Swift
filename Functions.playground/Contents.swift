
func greeting() {
    print("Hello world!")
}

greeting()

func greetingSomeone(name: String) {
    print("Hello \(name)!")
}

greetingSomeone(name: "Jonathan")
greetingSomeone(name: "Eduardo")
greetingSomeone(name: "Edgardo")


func calculateAverage(n1: Double, n2: Double, n3: Double) -> Double {
    let sum = n1 + n2 + n3
    return sum / 3
}

let average = calculateAverage(n1: 10, n2: 20, n3: 30)
print(average)

func getFinalGrade(grade: Double) -> String {
    if(grade >= 0 && grade < 2) {
        return "You´ll have to study harder to avoid having hard exams"
    } else if (grade >= 2 && grade < 3) {
        return "You were pretty close... you´ll get it the next time"
    } else if (grade >= 3 && grade < 4) {
        return "You did it!, just keep in mind that you can always get better! :D"
    } else if (grade >= 4 && grade <= 5) {
        return "Congratulations!!! that was flawlessly perfect!"
    } else {
        return "There is a system ERROR"
    }
}

getFinalGrade(grade: 0)
getFinalGrade(grade: 1)
getFinalGrade(grade: 2)
getFinalGrade(grade: 3)
getFinalGrade(grade: 4)
getFinalGrade(grade: 5)

