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

for number in 1...10 {
    print("The number is: \(number)")
}

let nameList = ["Alice", "Bob", "Charlie"]
let nametoSearch = "charlie"

var searchResult = ""

for name in nameList {
    if name.lowercased() == nametoSearch.lowercased() {
        searchResult = "I've found \(name)"
    }
}

if searchResult.isEmpty {
    print("I didn't found anybody named: \(nametoSearch)")
} else {
    print(searchResult)
}

let text = "Hello, my name is Jonathan"
for letter in text {
    print(letter)
}

// Challenge
/* TODO: Exercise
    Write a function that executes a loop through a String to count how many vowels contains.
 
    Tip: You can use this String "aeiouáéíóúAEIOUÁÉÍÓÚ" as a variable to determine the Spanish vowels.
    you can use the "contains" function for the Strings
 */

func countVowels(text: String) -> Int {
    let vowelsInSpanish = "aeiouáéíóúAEIOUÁÉÍÓÚ"
    var vowelCounter: Int = 0
    
    for character in text {
        if vowelsInSpanish.contains(character) {
            vowelCounter += 1
        }
    }
    return vowelCounter
}


let textToTest = "Hello, my name is Jonathan"
let vowelcounting = countVowels(text: textToTest)

print("The text contains \"\(vowelcounting)\" vowels.")

