// fizz buzz problem

import Foundation

for i in 0...100 {
    if ((i % 3) == 0) && ((i % 5) == 0) {
        print("FizzBuzz")
    } else if (i % 3) == 0 {
        print("Fizz")
    } else if (i % 5) == 0 {
        print("Buzz")
    } else {
        print(i)
    }
    
    
}

func printParameter(text: String...) {
    print(text)
}

printParameter(text: "ferist", "sdfs")


func println<T>(_ data: T) {
    print("\(data)"+"\n")
}

func generateNumber() -> Int {
    return Int.random(in: 0...9)
}

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

println(makeArray(size: 10, using: generateNumber))
println(makeArray(size: 10, using: generateNumber))
println(makeArray(size: 10, using: generateNumber))
println(makeArray(size: 10, using: generateNumber))
println(makeArray(size: 10, using: generateNumber))
