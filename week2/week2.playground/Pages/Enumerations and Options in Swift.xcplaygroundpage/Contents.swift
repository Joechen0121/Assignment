//: [Previous](@previous)

//MARK: - Question 1
struct Price{
    static let oil92Price: Float = 3.0
    static let oil95Price: Float = 4.0
    static let oil98Price: Float = 5.0
    static let dieselPrice: Float = 6.0
}

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"


    func getPrice() -> Float{
        
        switch self {
        case .oil92:
            return Price.oil92Price
        case .oil95:
            return Price.oil95Price
        case .oil98:
            return Price.oil98Price
        case .diesel:
            return Price.dieselPrice
        }
    }
}

Gasoline.oil92.rawValue

//Associated value: 可將與成員值有關連的資料儲存起來（可儲存任何自定類型的關聯值）
enum GasolineStatus {
    case oil92(name: String, price: Float)
    case oil95(name: String, price: Float)
    case oil98(name: String, price: Float)
    case diesel(name: String, price: Float)
}

func getPrice(of oilStatus: GasolineStatus) -> Float?{
    switch oilStatus {
    case let .oil92(_, price):
        return price
    case let .oil95(_, price):
        return price
    case let .oil98(_, price):
        return price
    case let .diesel(_ , price):
        return price
    }
}

let test92 = GasolineStatus.oil92(name: "92", price: 3.0)
getPrice(of: test92)



//MARK: - Question 2
class Pet {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {

    var pet: Pet?
    
    init(pet: Pet?) {
        self.pet = pet
    }
}

let people = People(pet: Pet(name: "Hi"))
func unwrapMethodOne(for people: People) {
    guard let name = people.pet?.name else {
        print("Unable to retrieve pet name")
        return
    }
    
    print("pet name is \(name)")
}
unwrapMethodOne(for: people)


let peopleTwo = People(pet: Pet(name: "Hello"))
func unwrapMethodTwo(for people: People) {
    if let name = people.pet?.name {
        print("pet name is \(name)")
    }
    else {
        print("Unable to retrieve pet name")
    }
}
unwrapMethodTwo(for: peopleTwo)


//: [Next](@next)
