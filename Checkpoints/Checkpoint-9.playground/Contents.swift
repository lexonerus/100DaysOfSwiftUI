import Foundation

let array = [3,6,9,18]

func checkpoint9(elements: [Int]?) -> Int { return elements?.randomElement() ?? Int.random(in: 1...100)  }

print(checkpoint9(elements: nil))
print(checkpoint9(elements: array))
