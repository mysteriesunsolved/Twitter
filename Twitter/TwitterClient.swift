//
//  TwitterClient.swift
//  Twitter
//
//  Created by Sanaya Sanghvi on 2/7/16.
//  Copyright © 2016 Sanaya Sanghvi. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "d7TY8zDS94ml5wy8zBn8WuPuZ"
let twitterConsumerSecret = "zp2HrwGZOTQArNVROgMgByKepnWn9OfVFXrcMMAy7LA9mbaT5C"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance =  TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey , consumerSecret: twitterConsumerSecret)

        }
        
        return Static.instance
    }

}
