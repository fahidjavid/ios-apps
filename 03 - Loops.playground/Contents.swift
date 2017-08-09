//: Playground - noun: a place where people can play

import UIKit

var myNumber = 1

// while loop
while myNumber < 10 {
    
    myNumber += 1
    
    print(myNumber)
}

var myAnimalArray = ["Lion", "Crab", "Hippo", "Parrot"]


// for loop
for animal in myAnimalArray {
    print(animal)
}


// Another for loop example
var fibonacciArray = [1,1,2,3,5,8,13]

for number in fibonacciArray {
    
    let myNumber = number * 5
    
    print(myNumber)
    
}