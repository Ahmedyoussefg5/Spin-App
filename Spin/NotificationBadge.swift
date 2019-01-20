//
//  NotificationBadge.swift
//  Spin
//
//  Created by Sobhy Youssef on 9/17/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation

class NotificationBadges : NSObject{
    
 
    
    var session_id: String!
    var message : String!
    var update : String!
    var tabs : Tabs!
    
    init(fromDictionary dictionary: NSDictionary){
        session_id = dictionary["session_id"] as? String
        message = dictionary["message"] as? String
        update = dictionary["update"] as? String
        
//        let tabsarray = dictionary[KeyPath: "tabs"] as? NSDictionary
//        tabs = Tabs(fromDictionary: tabsarray!)

        
        
        
    }
    
    
    class Tabs{
  
    
    
    var user_id: String!
    var stay_updated : String!
    var ecme : String!
    var my_corner : String!
    var news_events :String!
    var calculators : String!
    var case_studies : String!
    var videos : String!
    var faq : String!
    
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        user_id = dictionary["user_id"] as? String
        stay_updated = dictionary["stay_updated"] as? String
        ecme = dictionary["ecme"] as? String
        my_corner = dictionary["my_corner"] as? String
        news_events = dictionary["news_events"] as? String
        calculators = dictionary["calculators"] as? String
        case_studies = dictionary["case_studies"] as? String
        videos = dictionary["videos"] as? String
        faq = dictionary["faq"] as? String
        
        
        
    }
    
    }
    
    
    
}
