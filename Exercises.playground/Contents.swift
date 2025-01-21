/*TODO: Exercise: The Great Pokemon Battle!
Write a function that simulates a battle between two Pokemons.
The function will receive two dictionaries representing the information of each Pokemon. Each Pokemon has HP
(Health Points) and AP (Attack Points).

By default, the first Pokemon passed as a parameter will take the first turn.
Each turn, one Pokemon will attack the other.

The battle will end when one of the two Pokemons can no longer continue (has no more health points).
The function should return a string indicating who the winner is.
Tip: A Pokemon's attack means it will reduce the current turn Pokemon's attack points by the amount of health points of the other Pokemon.
*/


var pikachu: [String: Any] = ["name": "Pickachu", "AP": 10, "HP": 100]
var charmander: [String: Any] = ["name": "Charmander", "AP": 9, "HP": 120]


func battlePokemons(pokemon1: [String: Any], against pokemon2: [String: Any]) -> String {
    // Pokemon 1 Destructure
    guard let pokemon1Name = pokemon1["name"] as? String,
          let pokemon1Attack = pokemon1["AP"] as? Int,
          var pokemon1Health = pokemon1["HP"] as? Int else {
        return "Invalid data for Pokemon 1"
    }
    // Pokemon 2 Destructure
    guard let pokemon2Name = pokemon2["name"] as? String,
          let pokemon2Attack = pokemon2["AP"] as? Int,
          var pokemon2Health = pokemon2["HP"] as? Int else {
        return "Invalid data for Pokemon 1"
    }
    
    //Randomize first turn
    var turnPokemonSwitch: Bool = Bool.random()// true for Pokemon 1, false for Pokemon 2
    var pokemonWinner: String = ""
    
    while pokemon1Health > 0 && pokemon2Health > 0 {
        switch(turnPokemonSwitch){
        case true:
            pokemon2Health -= pokemon1Attack; turnPokemonSwitch.toggle()
        case false:
            pokemon1Health -= pokemon2Attack; turnPokemonSwitch.toggle()
        }
    }
    
    if pokemon1Health > 0 { pokemonWinner = pokemon1Name }
    if pokemon2Health > 0 { pokemonWinner = pokemon2Name }
    
    return "\(pokemonWinner) is the winner!"
}

print(battlePokemons(pokemon1: pikachu, against: charmander))
print(battlePokemons(pokemon1: pikachu, against: charmander))
print(battlePokemons(pokemon1: pikachu, against: charmander))
print(battlePokemons(pokemon1: pikachu, against: charmander))
print(battlePokemons(pokemon1: pikachu, against: charmander))

