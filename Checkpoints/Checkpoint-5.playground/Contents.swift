import Foundation


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

for i in (
    luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted { $0 < $1 }
    .map { String($0) + " is a lucky number" }
    ) {
    print(i)
}



struct Game {
    var score = 0 {
        didSet {
            print("Score changed to: \(score)")
            print("Old value was: \(oldValue)")
        }
    }
}

var game = Game()

game.score += 3
sleep(3)
game.score += 10
sleep(3)
game.score -= 5

