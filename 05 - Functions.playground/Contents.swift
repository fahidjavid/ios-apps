//: Playground - noun: a place where people can play

import UIKit


// simple function
func myNewFunction() {
    print("You are rendring a function")
}

myNewFunction()


var a = 2
var b = 5

// function with parameters and return value
func addTwoValues(x:Int, y:Int) -> Int {
    return x + y;
}

addTwoValues(x: a,y: b)


// function with bool

func myBoolFunction(x:Int, y:Int) -> Bool {
    if( x > y ) {
        return true
    } else {
        return false
    }
}

myBoolFunction(x: 100, y: 30)