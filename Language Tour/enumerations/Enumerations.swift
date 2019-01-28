//
//  Enumerations.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

//Enumerations
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .king:
            return "king"
        case .queen:
            return "queen"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func colors() -> String {
        let blackcolor = "black"
        let redColor = "red"
        
    }
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            let color = "black"
            return "spades \(color)"
        case .hearts:
            let color = "red"
            return "hearts \(color)"
        case .diamonds:
            let color = "red"
            return "diamonds \(color)"
        case .clubs:
            let color = "black"
            return "clubs \(color)"
        }
    }
}

let hearts = Suit.hearts
let heartDescription = hearts.simpleDescription()

enum ServerResponse {
    case result(String, String)
    case waiting(String)
    case failure(String)
}

let success = ServerResponse.result("6:00am", "8:09pm")
let failure = ServerResponse.failure("Out of cheese")
let waiting = ServerResponse.waiting("Waiting for server response...")

switch success {
case let .result(sunrise, sunset): print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .waiting(message): print("Hold on: \(message)")
case let .failure(message): print("failure \(message)")
}
