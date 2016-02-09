//
//  TwitterClient.swift
//  Twitter
//
//  Created by Sanaya Sanghvi on 2/7/16.
//  Copyright © 2016 Sanaya Sanghvi. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "0kimVAaIT1ZvU27gwyQ4ZTpGK"
let twitterConsumerSecret = "wZDHRRRP56sPKCuEdl21734xE6B8EKoWnvs7cSs6XvjDtWvTZH"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance =  TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey , consumerSecret: twitterConsumerSecret)

        }
        
        return Static.instance
    }

}
