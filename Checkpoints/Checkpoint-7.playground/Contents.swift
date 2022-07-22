import Foundation

class Animal {
    let legs = 4
    
    func speak() {
        print("hhhh")
    }
}

class Dog: Animal {
    override func speak() {
        print("Bark!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    override func speak() {
        print("Miau...")
    }
}

class Corgi: Dog {
    override func speak() {
        print("bark bark bark")
    }
}

class Poodle: Dog {
    override func speak() {
         print("Bark!!!")
    }
}

class Persian: Cat {
    override func speak() {
        print("mmm miau")
    }
}

class Lion: Cat {
    override func speak() {
        print("Arhhhrhrh! ")
    }
}

let tom = Persian(isTame: true)
tom.speak()
print(tom.legs)

let lucky = Poodle()
lucky.speak()
