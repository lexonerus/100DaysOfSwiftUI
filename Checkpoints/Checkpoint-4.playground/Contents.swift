import Foundation

enum RootErrors: Error {
    case outOfBounds
    case noRoot
}

// My solution. This function works with binary search under the hood
func findSquareRoot(of number: Int) throws -> Int {
    let range = 1...10_000
    guard range.contains(number) else { throw RootErrors.outOfBounds }
    
        var low = 1, high = number
        while low != high {
            let mid = (low + high) / 2
            if mid * mid <= number && (mid + 1) * (mid + 1) > number {
                print(mid)
                return mid
                
            }
            else if mid * mid > number { high = mid - 1 }
            else { low = mid + 1 }
        }
        print("low  \(low)")
        return low
    
}


// Solution, after looking at hint on hackingwithswift Checkpoint 4
func simpleRootFinder(of number: Int) throws -> Int {
    let range = 1...10_000
    guard range.contains(number) else { throw RootErrors.outOfBounds }
    
    var i = 0
    
    while i*i != number {
        i += 1
        if i >= 10_000 {
            throw RootErrors.noRoot
        }
    }
    
    print(i)
    return i
}

try findSquareRoot(of: 3)
try simpleRootFinder(of: 3)
