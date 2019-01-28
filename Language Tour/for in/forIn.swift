//
//  forIn.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

//for in
let interestingNumbers = [
    "prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Sqaure": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest{
            largest = number
        }
    }
}
print(largest)
