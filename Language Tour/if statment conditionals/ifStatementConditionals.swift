//
//  ifStatementConditionals.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

//if Statement Conditionals
var optionalString: String? = "Hello"
print(optionalString = nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

let nickName: String? = nil
let fullName: String? = "John Appleseed"

let informationalGreeting = "Hi \(nickName ?? fullName)"
print(informationalGreeting)
