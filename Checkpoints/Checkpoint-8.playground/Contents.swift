import Foundation

protocol Building {
    var rooms: Int { get set }
    var cost: Int { get set }
    var agent: String { get set }
    
    func showSalesSummary() -> String
    
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    init() {
        self.rooms = 150
        self.cost = 200_000
        self.agent = "Mark Peters"
    }
    
    func showSalesSummary() -> String {
        return "This house was never sold."
    }
    
}

let newHouse = House()
print("\(newHouse.agent) says: \"\(newHouse.showSalesSummary())\"")

struct Office: Building {
    var rooms: Int = 75
    var cost: Int = 160_000
    var agent: String = "Jane Hopkins"
    
    func showSalesSummary() -> String {
        return """
                - Date: 13.03.2018 Price: 180.000$
                - Date: 01.08.2003 Price:  80.000$
                - Date: 15.04.1999 Price:  65.000$
                - Date: 30.06.1989 Price:  45.000$
                - Date: 21.02.1986 Price:  57.000$
        """
    }
    
}
print()
var office = Office()
print("\(office.agent) says: ")
print("\"Current price of our office is \(office.cost)$")
print("Here is a list of previus dials:\n\(office.showSalesSummary())\"")
office.cost = 155_000
print("\"But for you I can make a little dicount - \(office.cost)$\"")
