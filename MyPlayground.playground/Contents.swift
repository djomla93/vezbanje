//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


//  protocol PetAnimal {
//      var isSuitableForIndoor: Bool { get }
//  }

//  protocol AnimalFeeding {
//      var feedInterval: TimeInterval { get set }
//    func feed(withFood food: FootType, amountGrams grams: Int)
//  }

typealias Food = String


struct Dog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    var isSuitableForIndoor: Bool {return true}
    
    var feedInterval: TimeInterval = 720
    
    func feed(withFood food: Food, amountGrams grams: Int) {
        
    }
}

let jack = Dog(name: "Jack")
jack.feedInterval





typealias BirdKind = Int

struct Bird {
    let kind: BirdKind
    var name: String
    
    init(name: String, kind: BirdKind, suitableForIndoor: Bool = true) {
        self.name = name
        self.kind = kind
        self.isSuitableForIndoor = suitableForIndoor
        self.feedInterval = 300
    }
    
    let isSuitableForIndoor: Bool
    
    var feedInterval: TimeInterval
    
    func feed(withFood food: Food, amountGrams grams: Int) {
    
    }
}


let sparrow = Bird(name: "Mickey", kind: 1)
let chicken = Bird(name: "Chinq", kind: 10)

sparrow.isSuitableForIndoor


var myPets: [Any] = [jack, sparrow]


protocol PetAnimal {
    var isSuitableForIndoor: Bool {get}
}

protocol AnimalFeeding {
    var feedInterval: TimeInterval {get set}
    func feed(withFood food: Food, amountGrams grams: Int)
}




extension Dog: PetAnimal, AnimalFeeding {}
extension Bird: PetAnimal, AnimalFeeding {}


var animalsToFeed: [AnimalFeeding] = [jack, sparrow]
for animal in animalsToFeed {
    animal.feed(withFood: "", amountGrams: 200)
    
    switch animal {
    case is Bird:
        break
    default:
        break
    }
    
    if animal is Bird {
        let item = animal as! Bird
    }
    
    if let item = animal as? Bird {
        
    }
}


var heyJack = animalsToFeed[0]



protocol Flying {
    func fly()
    
}
extension Bird: Flying {
    func fly() {
        //
    }
}


sparrow.fly()

struct Cat {
    var name: String
}

extension Cat: PetAnimal {
    var isSuitableForIndoor: Bool {return true}
}


