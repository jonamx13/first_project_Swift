// Ways to initialize arrays
var fruits1: [String] = ["Apple", "Pineapple", "Pear"]
var fruits2 = [String]()

let fruitsCount1 = fruits1.count
let first = fruits1[0]

if (!fruits1.isEmpty) {
    print(first)
}

// let firstError = fruits2[0] -> Fatal Error: Index out of range, array is empty
let fruitsCount2 = fruits2.count
if (fruitsCount2 > 0) {
    let first2 = fruits2[0]
    print(first2)
} else {
    print("your array is empty")
}

//Insert new elements
fruits1.append("Strawberry")
print(fruits1)
print(fruits1.last!)
fruits2.append("Strawberry")
print(fruits2)

fruits1.insert("Grapes", at: 1) // Places element at the position given inside the array
print(fruits1)
