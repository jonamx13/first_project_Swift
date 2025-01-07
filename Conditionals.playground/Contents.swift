let grade = 3

// Simple conditionals
if(grade >= 3) {
    print("Congrats! you have approved the exam!")
} else {
    print("Sorry, we´ll meet the next semester :(")
}


let exempt = true

if(exempt || grade >= 3) {
    print("Congrats!! you have passed the course!")
} else {
    print("Sorry, you couldn´t pass te course")
}

let examPresented = true

if(examPresented && (exempt || grade >= 3)) {
    print("Congrats!!! there´s no doubt you have passed the course!")
} else {
    print("Sorry, you were pretty close :/")
}


// Complex conditionals
let grade2 = 4

if(grade2 >= 0 && grade2 < 2) {
    print("You´ll have to study harder to avoid having hard exams")
} else if (grade2 >= 2 && grade2 < 3) {
    print("You were pretty close... you´ll get it the next time")
} else if (grade2 >= 3 && grade2 < 4) {
    print("You did it!, just keep in mind that you can always get better! :D")
} else if (grade2 >= 4 && grade2 <= 5) {
    print("Congratulations!!! that was flawlessly perfect!")
} else {
    print("There is a system ERROR")
}
