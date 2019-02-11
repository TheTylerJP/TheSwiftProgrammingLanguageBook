//
//  ConstantsAndVariables.swift
//  
//
//  Created by Tyler P Admin on 2/11/19.
//

import Foundation
import UIKit

/*
 Constants and Variables associate a name(such as maximumNumberOfLoginAttempts or welcomeMessage) with a value of a particular type(such as the number 10 or the string "Hello"). The value of a constant can't be changed once it's set, whereas a variable can be set to a different value in the future
 */

let maximumNumberOfLoginAttempts = 10
var currentLoginAttemp = 0

//Multiple variables on a single line, seperated by commas. Same can be done with constants.
var x = 0.0, y = 0.0, z = 0.0

/*
 Constant and variable names can’t contain whitespace characters, mathematical symbols, arrows, private-use Unicode scalar values, or line- and box-drawing characters.
 Nor can they begin with a number, although numbers may be included elsewhere within the name.
 */

“let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow”

var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"
//friendlyWelcome is now "Bonjour!"

//Unlike a variable, a constant can't be changed after it's set. Attempting to do so is reported as an error when the code is compiled.

let languageName = "Swift"
languageName = "Swift++" //compile-time error: languageName cannot be changed.


/*
 Printing Constants and Variables
 */

print(friendlyWelcome)
//Prints "Bonjour!"

/*
 Semicolons
 */

/*
 Unlike many other languages, Swift doesn’t require you to write a semicolon (;) after each statement in your code, although you can do so if you wish. However, semicolons are required if you want to write multiple separate statements on a single line.
 */

let cat = "😺"; print(cat)

/*
 You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store.
 Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use.
 */

var welcomeMessage: String

/*
 The colon in the declaration means "of type"
 */

welcomeMessage = "Hello!"

/*
 You can define multiple related variables of the same type on a single line, seperated by commas, with a single type annotation after the final variable name.
 */

var red, green, blue: Double
