//
//  LicAggreemntViewController.swift
//  Spin
//
//  Created by Ahmad.taalab on 2/17/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import UIKit

class LicAggreemntViewController: BaseViewController {
    //MARK:- IBOutlets
    //MARK:- Variables
    let HOME_SEGUE = "fromLicToHome"
    var stateController : LoginStateController!
    
    //MARK:- UI Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateController = LoginStateController()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- IBActions
    @IBAction func btnLoginClicked(_ sender: Any) {
        
                        self.performSegue(withIdentifier: self.HOME_SEGUE, sender: self)
                        
        
    }
    
    
    
    
}

