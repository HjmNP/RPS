//
//  GameState.swift
//  RPS
//
//  Created by 한지민 on 2018. 4. 20..
//  Copyright © 2018년 HjmNP. All rights reserved.
//

import Foundation
import GameplayKit
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
var userChoice = 0
enum GameState{
    case start, win, lose, draw
    var gameState: String{
        switch self {
        case .win:
            return "Win"
        case .lose:
            return "Lose"
        case .draw:
            return "Draw"
        case .start:
            return "Start"
        }
    }
}

func userSign() -> Sign {
    if userChoice == 0 {
        return .rock
    }
    else if userChoice == 1 {
        return .paper
    }
    else {
        return .scissor
    }
}

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissor
    }
}


