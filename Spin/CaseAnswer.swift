//
//  CaseAnswer.swift
//  Spin
//
//  Created by Sobhy Youssef on 6/14/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation


class CaseAnswer : NSObject{
   
    
    var user_id: String!
    var case_id : String!
    var doctoranswer : String!
    
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        user_id = dictionary["User_id"] as? String
        case_id = dictionary["Case_id"] as? String

        doctoranswer = dictionary["Doctor Answer"] as? String
        
    }
        
}
