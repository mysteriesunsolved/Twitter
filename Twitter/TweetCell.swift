//
//  TweetCell.swift
//  Twitter
//
//  Created by Sanaya Sanghvi on 2/14/16.
//  Copyright © 2016 Sanaya Sanghvi. All rights reserved.
//

import UIKit


class TweetCell: UITableViewCell {
    
    
    @IBOutlet var profilepictureView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var timestampLabel: UILabel!
    
    @IBOutlet var tweetTextLabel: UILabel!
    
    @IBOutlet var dateLabel: UILabel!
    
    var tweet: Tweet! {
        
        didSet {
            
            let name = tweet.user?.name
            let username = tweet.user?.screenname
            let tweetText = tweet.text
            let date = tweet.createdAtString
        
            nameLabel.text = name
            usernameLabel.text = "@ .\(username)"
            tweetTextLabel.text = tweetText
            dateLabel.text = date
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
