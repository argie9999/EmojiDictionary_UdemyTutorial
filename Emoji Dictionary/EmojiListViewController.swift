//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Bryan Robinson on 4/30/15.
//  Copyright (c) 2015 Bryan Robinson. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😏","😑", "😰", "😷", "😖", "👻", "😎", "👴🏼"]
    var emoji = ""
    var counter = 0
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.counter = self.counter + 1;
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.emojiDescription = "You have tapped \(self.counter) emoji(s)"
    }
}
