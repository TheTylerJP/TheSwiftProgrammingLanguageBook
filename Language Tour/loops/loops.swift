//
//  loops.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UKit

//loops
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
