//
//  FAQDataModel.swift
//  Spin
//
//  Created by Sobhy Youssef on 8/5/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation

class FAQDataModel : NSObject {
    
   
    
    
    
    
    
    var body : String!
    var iD : String!
    var image : String!
    var link : String!
    var title : String!
    var createdDate : String!
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        body = dictionary["intro"] as? String
        iD = dictionary["id"] as? String
        
        if let img = dictionary["image"] as? String {
            image = img
        }
        
        link = dictionary["link"] as? String
        title = dictionary["title"] as? String
        createdDate = dictionary["created_at"] as? String
    }
    
}
