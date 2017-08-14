//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        
    }
}

var osoba1: Person?
var osoba2: Person?
var osoba3: Person?


class Tenant {
    let name: String
    init (name: String) {
        self.name = name
    }
    
    var apartment: Apartment?
    
    deinit {
        
    }
}

class Apartment {
    let unit: String
    
    init(unit: String) {
        init(umit: String) {
            self.unit = unit
        }
        var tenant: Tenant?
        
        
        deinit {
            
        }
    }
}