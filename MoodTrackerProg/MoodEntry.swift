//
//  MoodEntry.swift
//  MoodTrackerProg
//
//  Created by Jackson Ho on 11/22/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//

import Foundation
import UIKit.UIColor

struct  MoodEntry {
    var mood: Mood
    var date: Date
    
    enum Mood: Int {
        case none
        case amazing
        case good
        case neutral
        case bad
        case terrible
        
        var stringValue: String {
            switch self {
            case .none:
                return ""
            case .amazing:
                return "amazing"
            case .good:
                return "good"
            case .neutral:
                return "neutral"
            case .bad:
                return "bad"
            case .terrible:
                return "terrible"
            }
        }
        
        var colorValue: UIColor{
            switch self {
            case .none:
                return .clear
            case .amazing:
                return .green
            case .good:
                return .blue
            case .neutral:
                return .gray
            case .bad:
                return .orange
            case .terrible:
                return .red
            }
        }
    }    
}

