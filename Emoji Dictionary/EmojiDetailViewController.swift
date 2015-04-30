//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Bryan Robinson on 4/30/15.
//  Copyright (c) 2015 Bryan Robinson. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    var emoji = "😘"
    var emojiDescription = "one two three"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDescriptionLabel.text = self.emojiDescription
    }
}