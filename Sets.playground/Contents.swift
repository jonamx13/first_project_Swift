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
