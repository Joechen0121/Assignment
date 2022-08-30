//MARK: - Question 2

var input: Int = 1

let isOdd = { (input: Int) -> Bool in
    if input%2 == 0{
        return false
    }
    else {
        return true
    }
}

isOdd(input)
