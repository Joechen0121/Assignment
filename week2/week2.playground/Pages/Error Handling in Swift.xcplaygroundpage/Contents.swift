//: [Previous](@previous)

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumerGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        
        guard number == targetNumber else {
            
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetNumber)")
    }
}

let guessNumber = GuessNumerGame()
do {
    try guessNumber.guess(number: 20)
}catch let error {
    print("\(error)")
}

//: [Next](@next)
