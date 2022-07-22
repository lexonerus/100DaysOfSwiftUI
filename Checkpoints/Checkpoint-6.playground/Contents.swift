import Foundation

struct Car {
    private let model: String
    private let numberOfSeats: Int
    private(set) var currentGear: Int {
        didSet {
            print("Current gear is: \(self.currentGear)")
        }
    }
    var maxSpeed: Int {
        get {
            self.currentGear * 20
        }
    }
    
    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
    
    mutating func gearUp() {
        self.currentGear += 1
    }
    
    mutating func gearDown() {
        self.currentGear -= 1
    }
    
    static let example = Car(model: "Peugeot 307", numberOfSeats: 5, currentGear: 1)
}

print(Car.example)

var jeep = Car(model: "Jeep", numberOfSeats: 6, currentGear: 1)
print(jeep)

print(jeep.maxSpeed)
jeep.gearUp()
print(jeep.maxSpeed)

