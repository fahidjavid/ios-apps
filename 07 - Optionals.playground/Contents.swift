//: Playground - noun: a place where people can play

import UIKit

var myName : String?

myName?.uppercased()


// ! we are certain that the value is there otherwise app will crash
// ? we know it can be missing as it's optional


// Another example to secure the program

var myAge = "30"


// here if we don't use the 'myAge' as int it will raise and error
var myResult = Int(myAge)! * 5

// more secure condition if you think user can also add string
myAge = "Seven"

if let myNumber = Int(myAge) {
    var myResult = myNumber * 5
}












