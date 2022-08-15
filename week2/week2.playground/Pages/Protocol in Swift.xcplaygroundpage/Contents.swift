//: [Previous](@previous)
//MARK: - Question 1
protocol PoliceMan {
    func arrestCriminals() -> Void
}

protocol ToolMan {
    func fixComputer() -> Void
}

struct Person: PoliceMan {
    
    var name: String
    var toolMan: ToolMan
    
    func arrestCriminals() {}
}

struct Engineer: ToolMan {
    func fixComputer() {}
}

let person = Person(name: "Steven", toolMan: Engineer())
//: [Next](@next)
