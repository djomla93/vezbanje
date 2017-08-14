//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var predavac = true
var String = "nekoIme"

enum AutoBoja {
    // dodeljivanje vrednosti uvek malim slovima
    case crvena
    case plava
    case crna
    case bela
}

var bojaMojihKola = AutoBoja.crna
var bojaMojihKola2 = AutoBoja.plava

bojaMojihKola = .bela
// isti slucaj dodeljivanja vrednosti

//switch bojaMojihKola {
//case.crna:
//print("crna boja")
//default:
//    print("neka druga boja")
//}

//case.plava, .crvena, .crna ako imam vise slucaja mogu kucati ovako...

// u swiftu ne moram da koristim break, unapredjeno je u odnosu na objectice C.

// Optionals:

var question:  String?
var correctAnswerPosition: Int?

question = nil

var nekiBroj = 20

var dict :[String : Int] = ["k1": 20, "k2": 40]


// da li je tuple slican kao asocijativni niz u php-u?

