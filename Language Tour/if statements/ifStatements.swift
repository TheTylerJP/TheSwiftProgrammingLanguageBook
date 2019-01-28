//
//  ifStatements.swift
//  
//
//  Created by Tyler Phillips on 1/28/19.
//

import UIKit

//if Statements
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)
