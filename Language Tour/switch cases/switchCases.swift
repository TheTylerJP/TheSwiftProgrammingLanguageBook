//
//  switchCases.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

let vegetable = "red pepper"
switch vegetable {
case "celery" :
    print("Add some raisins and make ants a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything is good in soup")
}
