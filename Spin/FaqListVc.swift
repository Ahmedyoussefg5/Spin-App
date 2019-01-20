//
//  FaqListVc.swift
//  Spin
//
//  Created by Sobhy Youssef on 9/3/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation

class FaqListViewController: BaseViewController, WebDelegate{
    func startWebView(url: String) {
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        configurePageTitle()
//        
//        stateController = StayUpdatedStateController()
//        tableDataSource = UpdatesTableDataSource(stateController: stateController,
//                                                 delegate: self)
//        
//        self.tableView.dataSource = tableDataSource
//        self.tableView.isHidden = true
//        self.tableView.tableFooterView = UIView()
//        
//        stateController.getPosts { (error) in
//            self.activityIndicator.stopAnimating()
//            if error != nil {
//                self.show(error: error)
//            } else {
//                self.tableView.isHidden = false
//                self.tableView.reloadData()
//            }
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
