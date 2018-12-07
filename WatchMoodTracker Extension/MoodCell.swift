//
//  MoodRow.swift
//  WatchMoodTracker Extension
//
//  Created by Jackson Ho on 12/6/18.
//  Copyright © 2018 Jackson Ho. All rights reserved.
//
import UIKit
import WatchKit

class MoodCell: NSObject {
    
    @IBOutlet weak var moodImage: WKInterfaceImage!
    
    @IBOutlet weak var moodLabel: WKInterfaceLabel!
    
    var moodObj: MoodEntry? {
        didSet{
            guard let moodObj = moodObj else {return}
            moodImage.setImage(UIImage(named: moodObj.mood.stringValue))
            moodLabel.setText(moodObj.mood.stringValue)
        }
    }
}
