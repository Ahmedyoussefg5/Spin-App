//
//  ECMEData.swift
//  Spin
//
//  Created by Sobhy Youssef on 9/12/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation


class ECMEData : NSObject {
    
    
    

    
    
    
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
        body = dictionary["Body"] as? String
        iD = dictionary["ID"] as? String
        
        if let img = dictionary["Image"] as? String {
            image = img
        }
        
        link = dictionary["Link"] as? String
        title = dictionary["Title"] as? String
        createdDate = dictionary["Created"] as? String
    }
    
}
