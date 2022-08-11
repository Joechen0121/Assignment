//: [Previous](@previous)
//MARK: - Question 1
var myFriends: [String]


//MARK: - Question 2
myFriends = ["Ian", "Bomi", "Kevin"]


//MARK: - Question 3
myFriends.append("Michael")
print(myFriends)


//MARK: - Question 4
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)


//MARK: - Question 5
for i in 0..<myFriends.count {
    print(myFriends[i])
}


//MARK: - Question 6
//index [  0,    1,   2,      3   ]
//      [Kevin, Ian, Bomi, Michael]
// index 5 超出Array的範圍

//MARK: - Question 7
myFriends.first


//MARK: - Question 8
myFriends.last


//MARK: - Question 9
var myCountryNumber: Dictionary<String, Int>


//MARK: - Question 10
myCountryNumber = ["US": 1, "GB": 44, "JP": 81]


//MARK: - Question 11
myCountryNumber.updateValue(0, forKey: "GB")
print(myCountryNumber)


//MARK: - Question 12
var emptyDicOne = Dictionary<String, Int>()
var emptyDicTwo: Dictionary<String, Int> = [:]
print(emptyDicOne)
print(emptyDicTwo)


//MARK: - Question 13
//removeValue(forKey:) Removes the given key and its associated value from the dictionary.

//: [Next](@next)
