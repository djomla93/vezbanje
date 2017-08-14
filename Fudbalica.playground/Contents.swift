//: Playground - noun: a place where people can play

import UIKit

enum PozicijaIgraca {
    case golman
    case odbrana
    case vezniRed
    case napad
}

typealias Player = (name: String, dress: Int, numOfYellowCards: Int, hasRedCard: Bool, position: PozicijaIgraca)

var deGea: Player = (name: "David De Gea", dress: 1, numOfYellowCards: 0, hasRedCard: false, position: PozicijaIgraca.golman)

deGea.hasRedCard = true

var tim = (PozicijaIgraca.golman, PozicijaIgraca.golman, PozicijaIgraca.odbrana,PozicijaIgraca.odbrana, PozicijaIgraca.odbrana, PozicijaIgraca.odbrana, PozicijaIgraca.odbrana, PozicijaIgraca.vezniRed, PozicijaIgraca.vezniRed, PozicijaIgraca.vezniRed, PozicijaIgraca.vezniRed, PozicijaIgraca.napad, PozicijaIgraca.napad, PozicijaIgraca.napad)



func canPlay(player: Player) -> Bool {
    return true
}

canPlay(player: deGea)



var timManUtd : [String : Int] = ["David De Gea" : 1 ,"Dean Henderson" : 34, "Eric Bailly" : 3, "Daley Blind": 17, "Matteo Darmian": 36, "Phil Jones": 4, "Marcos Rojo" : 5, "Luke Shaw" : 23, "Chris Smalling" : 12, "Antonio Valencia" : 25 ,"Michael Carrick" : 16, "Marouane Fellaini" : 27, "Ander Herrera" : 21, "Juan Mata" : 8, "Henrikh Mkhitaryan" : 22, "Paul Pogba" : 6 ,"Zlatan Ibrahimovic" : 9, "Anthony Martial" : 11, "Marcus Rashford" : 19, "Wayne Rooney" : 10
]

var timChelsa : [String : Int] = ["Courtois" : 13 , "AsmirBegović" : 1,"Eduardo" : 37, "Nathan Aké" : 6, "Azpilicueta": 28, "Gary Cahill": 24, "Luiz": 30, "Zouma" : 5, "Moses" : 15, "Matic" : 21, "Fabregas" : 4 ,"N'Golo Kanté" : 7, "Marcos Alonso" : 3, "Ruben Loftus-Cheek" : 14, "Michy Batshuayi" : 23, "Pedro" : 11, "Diego Costa" : 19 ,"Eden Hazard" : 10, "Willian" : 22
]

typealias tim2 = Int; timManUtd;  Array<Any>()
typealias tim1 = Int; timChelsa;  Array<Any>()
// var igrac = Array<Any>(); timChelsa ; timManUtd
var utakmica = String()



// var igrac = (tim: String:Int, brZutih: Int, crveniKarton: bool)









