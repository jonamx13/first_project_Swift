var optionalInt: Int? = nil
optionalInt = 9

let value = optionalInt ?? 0
print(value)

func greeting(name: String?) {
    let greeting = name != nil
                    ? "Hello, \(name!)!"
                    : "Hello, human!"
    print(greeting)
}

greeting(name: nil)
greeting(name: "Jonathan")

//Challenge: Function with optional Doubles, sum 'em and if one is nil, print "Some data is missing!"

func optionalSum(firstNumber: Double?, secondNumber: Double?) {
    guard let firstNumber, let secondNumber else {
        print("There is missing data!")
        return
    }
    
    return print(firstNumber + secondNumber)
}

optionalSum(firstNumber: 33, secondNumber: 45)
optionalSum(firstNumber: nil, secondNumber: 45)
optionalSum(firstNumber: 33, secondNumber: nil)
