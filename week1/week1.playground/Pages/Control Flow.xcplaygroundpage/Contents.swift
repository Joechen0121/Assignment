//: [Previous](@previous)
//MARK: - Question 1
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for num in lottoNumbers.suffix(3) {
    print(num)
}


//MARK: - Question 2
for val in 5...10 {
    print(val)
}

for val in stride(from: 10, to: 5, by: -2) {
    print(val)
}

//MARK: - Question 3
var n1: Int = 5
while n1 <= 10 {
    print(n1)
    n1 += 1
}

var m1: Int = 10
while m1 >= 6 {
    print(m1)
    m1 -= 2
}

//MARK: - Question 4
var n2: Int = 5
repeat {
    print(n2)
    n2 += 1
}while n2 <= 10

var m2: Int = 10
repeat {
    print(m2)
    m2 -= 2
}while m2 >= 6


//MARK: - Question 5
//while: 會先判斷條件，若符合則進入loop，loop結束後再判斷條件，依以類推
//repeat-while：先進入loop後再判斷條件，若符合則繼續loop，等loop結束後再判斷條件...
//repeat-while 至少會”先“執行一次loop內的程式


//MARK: - Question 6
var isRaining: Bool = false
if isRaining {
    print("It’s raining, I don’t want to work today.")
}
else {
    print("Although it’s sunny, I still don’t want to work today.")
}
    

//MARK: - Question 7
var jobLevel: Int = 0
switch jobLevel {
    case 1:
        print("Member")
    case 2:
        print("Team Leader")
    case 3:
        print("Manager")
    case 4:
        print("Director")
    default:
        print("We don't have this job")
}

//: [Next](@next)
