//
//  Sign.swift
//  RPS
//
//  Created by 한지민 on 2018. 4. 20..
//  Copyright © 2018년 HjmNP. All rights reserved.
//

import Foundation
enum Sign{
    case rock, scissor, paper
    
    var sign: String{
        switch self {
        case .paper:
            return "✋"
        case .rock:
            return "✊"
        case .scissor:
            return "✌️"
        }
    }
}
