//
//  CaseStudiesList.swift
//  Spin
//
//  Created by Sobhy Youssef on 6/14/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation

class CaseStudiesList : NSObject{
    
    
    
    var id : String!
    var title : String!
   
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        id = dictionary["id"] as? String
        title = dictionary["title"] as? String
    }
    
    
    
    
    
}
