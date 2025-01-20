var counter = 1

while counter <= 10 {
    print("The counter is: \(counter)")
    counter += 1
}

let answer = 7
var guess: Int?

while guess != answer {
    print("New guessing...")
    guess = Int.random(in: 1...10)
    print(guess!)
    if guess == answer {
        print("Answer found!!!")
    } else {
        print("Try again")
    }
    
}
