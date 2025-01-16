var animals: Set<String> = Set(["Dog", "Cat", "Bunny"])
var otherAnimals = Set<String>()

print(animals)

let countingAnimal = animals.count
let countingOtherAnimals = otherAnimals.count

animals.insert("Horse")
print(animals)

animals.insert("Horse") // Sets don't allow repetition, so it won't make a difference when we add exact same elements
print(animals)

animals.insert("horse") // It will work  because the character casing makes it a different element
print(animals)

animals.remove("horse")
print(animals)

animals.removeAll()
print(animals)

let mathematics = Set<String>(["Jhon", "Camila", "Marcela", "Mary", "Anton"])
let spanish = Set<String>(["Jhon", "Camila", "Andrew", "Mary", "Emilian", "Dorothy"])

let union = mathematics.union(spanish)
print(union)

let intersection = mathematics.intersection(spanish)
print(intersection)

let subtraction1 = mathematics.subtracting(spanish)
print(subtraction1)

let subtraction2 = spanish.subtracting(mathematics)
print(subtraction2)

let diff = mathematics.symmetricDifference(spanish)

