//: Playground - noun: a place where people can play

import UIKit

var myMovieArray = ["Movie 1", "Movie 2", "A Movie 3", "Movie 4" ];

myMovieArray.append("Movie 5")
myMovieArray[0]
myMovieArray[1] = "New Movie";

print(myMovieArray)

myMovieArray.count

myMovieArray.remove(at: 1)

print(myMovieArray)

myMovieArray.isEmpty

myMovieArray.sort()

// dictionaries

var myMovieDictionary = ["Rule 1": "Do Work!", "Rule 2":"Work Hard", "Rule 3": "Work Productive"]

print(myMovieDictionary)

myMovieDictionary["Rule 1"] = "Also Take Rest";

print(myMovieDictionary)