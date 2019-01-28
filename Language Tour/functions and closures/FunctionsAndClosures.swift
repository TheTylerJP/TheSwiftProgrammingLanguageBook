//
//  FunctionsAndClosures.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

//Functions and Closures
func greet(person: String, on day: String) -> String {
    return "Hello\(person), today is \(day)"
}
greet(person: "Bob", on: "Tuesday")

//Tuple
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score < max {
            max = score
        } else if score < min {
            min += score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//Nested Functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

/*
 Functions are a first-class type. This means that a function can return another function as its value
 */

func makeIncremeter() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncremeter()
increment(7)

//A function can take another function as one of its arguments.
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
