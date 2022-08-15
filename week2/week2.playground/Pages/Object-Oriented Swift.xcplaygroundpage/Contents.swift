//: [Previous](@previous)

//MARK: - Question 1
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}
/* Test */
let animal = Animal.init(gender: .male)
animal.eat()

//MARK: - Question 2
class Elephant: Animal {
    override func eat() {
        print("Plants!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("Meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("Grass!")
    }
}
/* Test */
let elephant = Elephant.init(gender: .female)
elephant.eat()
let tiger = Tiger.init(gender: .male)
tiger.eat()
let horse = Horse.init(gender: .undefined)
horse.eat()
print("------------------------")

//MARK: - Question 3
class Zoo: Animal {
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
        super.init(gender: weeklyHot.gender)
    }
}

let zoo = Zoo.init(weeklyHot: tiger)
zoo.weeklyHot = tiger
zoo.weeklyHot.gender
zoo.weeklyHot.eat()

zoo.weeklyHot = elephant
zoo.weeklyHot.gender
zoo.weeklyHot.eat()

zoo.weeklyHot = horse
zoo.weeklyHot.gender
zoo.weeklyHot.eat()
print("------------------------")


//MARK: - Question 4
/*
 [Struct]
 1. Value type - 在傳遞和賦值時將會進行備份
 2. 建構方法
    2.1 建構
    - 給予預設值
    - init()
    - 逐一成員建構：結構新實例裡成員屬性的快速方法
    2.2 無解構
 3. 是否能繼承：否
 4. ARC自動計數機制不適用
 
 [Class]
 1. Reference type - 在傳遞和賦值時不進行備份，只動用到共同記憶體下的實例
 2. 建構解構之方法
    2.1 建構
    - 給予預設值
    - init()
    2.2 解構
    - deinit()
 3. 是否能繼承：能
 4. ARC自動計數機制適用於class的實例，若記憶體處理不當，會造成memory leak
 */


//MARK: - Question 5
/*
 1. instance method: 提供存取和修改實例屬性的方法或提供與實例目的相關的功能
 2. type method: 特定型別 ( 類別、結構與列舉 ) 上的方法，不用生成實例就可以直接呼叫型別方法。
 Example: 在class內加入"class"字或在struct、enum內加入"static"字
 */

//MARK: - Question 6
/*
 要使用class、struct實例的過程中，需為實例中內的儲存屬性（stored property）設定一個初始值。
 儲存型屬性的值不能處於一個未知的狀態。
 */


//MARK: - Question 7
/*
 1. instance method self: self等同於該實例本身，可以在一個實例的實例方法中使用這個隱含的self屬性來參考當前實例。
 2. type method self: self指向這個型別本身，而不是型別的某個實例。
 */


//MARK: - Question 8
/*
 1. reference type:
 每個實例共享資料的記憶體位置。當這類型別被初始化、被指派給一個變數或常數、或者是被傳送到函式時，就會回傳參考到相同的實例。
 2. value type:
 每個實例保存資料一份獨立的備份。當這類型別被指派給一個變數或常數、或是被傳送到函式時，就會創建一個新的實例。
 */


//: [Next](@next)
