//
//  EcmeStateController.swift
//  Spin
//
//  Created by Ahmed on 3/11/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import Foundation
import Alamofire

class EcmeStateController {
    //MARK: - Variables
    var posts : [StayUpdatedData] = []
    
    //MARK:- Init
    
    //MARK: - Filtring
    
    
    //MARK:- API CALLS
    func getPosts (completion: @escaping (String!) -> Void) {
        let urlString = "\(URLS.server_ip.rawValue)\(URLS.eCME.rawValue)"
        
        let parameters : Parameters = [
            "username" : LoginStateController.userData.username,
            "password" : LoginStateController.userData.password,
            ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.httpBody)
            .responseJSON { response in
                
                guard response.result.isSuccess else {
                    completion(ErrorMessages.connectionError.rawValue)
                    return
                }
                
                if let data = response.result.value as? NSDictionary {
                    let serverResponse : ServerResponse = ServerResponse(fromDictionary: data)
                    
                    if serverResponse.code == "1" {
                        self.posts = serverResponse.stayUpdatedData
                        
                        completion(nil)
                    } else {
                        completion(serverResponse.msg)
                    }
                    
                }
        }
        
    }
}
