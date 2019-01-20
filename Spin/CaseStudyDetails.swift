//
//  CaseStudyDetails.swift
//  Spin
//
//  Created by Sobhy Youssef on 6/14/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation


class CaseStudyDetail : NSObject{
    
    
    var user_id: String!
    var id : String!
    var title : String!
    var history : String!
    var reference :String!
    var examination : String!
    var investigation : String!
    var question : String!
    var imageurl : String!
    var modelanswer : String!
    var useranswer : String!
    var answerimg : String!

    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        id = dictionary["id"] as? String
        title = dictionary["title"] as? String
        user_id = dictionary["user_id"] as? String
        history = dictionary["history"] as? String
        reference = dictionary["reference"] as? String
        examination = dictionary["examination"] as? String
        investigation = dictionary["investigation"] as? String
        question = dictionary["question"] as? String
        imageurl = dictionary["image"] as? String
        modelanswer = dictionary["model_answer"] as? String
        useranswer = dictionary["user_answer"] as? String
        answerimg = dictionary["answer_image"] as? String

        

    }
    
    
    
    
    
}
