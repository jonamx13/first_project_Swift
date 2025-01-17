let map: [String: Any] = ["key1": "value",
                          "key2": "value2",
                          "key3": 13]

var product: [String: Any] = [
    "id": 0,
    "name": "Lenovo PC",
    "price": 1000,
    "stock": 10,
    "promotion": true
]

let name = product["name"] as! String
print(name)

product["rating"] = 5
print(product)

product["stock"] = 1
product["price"] = 2000
print(product)

product.removeValue(forKey: "promotion")
print(product)

product["stock"] = nil
print(product)

product.removeAll()
print(product)


/*TODO: Exercise
 Make a function that returns the residents quantity by country with the following format: In (Country) there are (residents).
    If the dictionary has not the info of that country, it must return: "There's not enough data."
 
 It will receive the country as a String.
 
 Tip: Use the "contains" function (dictionary.keys.contains)
*/

let residentsbyCountry: [String: Int] = [
    "Colombia" : 48000000,
    "Mexico" : 120000000,
    "Spain" : 46000000,
    "France" : 67000000
]

func getResidentsByCountry(country: String) -> String {
    // Let's begin
    guard !country.isEmpty else {
        return "You must provide a country's name"
    }
    if (residentsbyCountry.keys.contains(country)) {
        return "In \(country) there are \(residentsbyCountry[country]!) residents"
    }
    return "There's not enough data for: \(country)"
}

//Test

print(getResidentsByCountry(country: "Mexico")) // We have data for Mexico, so it works, the same with the following countries
print(getResidentsByCountry(country: "Colombia"))
print(getResidentsByCountry(country: "Spain"))
print(getResidentsByCountry(country: "France"))

print(getResidentsByCountry(country: "Germany")) // We have no data for Germany, so we return the corresponding message

print(getResidentsByCountry(country: "")) // In this case, we are giving an empty String that we managed with a guard statement
