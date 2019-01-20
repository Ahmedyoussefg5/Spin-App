//
//  CaseStudiesVC.swift
//  Spin
//
//  Created by Ahmed on 3/11/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class CaseStudiesVC: BaseViewController {
    //MARK:- IBOutlets
    
    @IBOutlet weak var textFieldSearch: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //MARK:- Variables
    var stateController : CaseStudyStateController!
    var tableDataSource : CaseStudiesDataSource!
    
    //MARK:- UI Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configurePageTitle()
        
        stateController = CaseStudyStateController()
        tableDataSource = CaseStudiesDataSource(stateController: stateController, webDelegate: self)
        
        self.tableView.dataSource = tableDataSource
        self.tableView.isHidden = true
        self.tableView.tableFooterView = UIView()
        
        stateController.getPosts { (error) in
            self.activityIndicator.stopAnimating()
            if error != nil {
                self.show(error: error)
            } else {
                self.tableView.isHidden = false
                self.tableView.reloadData()
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Configuratiuon
    func configurePageTitle(){
        let frame : CGRect = CGRect(x: 0, y: 0, width: 100, height: 30)
        let label : UILabel = UILabel(frame: frame)
        
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "Nexa Light", size: 22.0)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        label.text = "Case Studies"
        
        self.navigationItem.titleView = label
    }
    
    //MARK:- IBActions
    
    @IBAction func btnCancelSearchClicked(_ sender: UIButton) {
        self.textFieldSearch.text = ""
        textFieldSearchChanged(textFieldSearch)
    }
    
    @IBAction func textFieldSearchChanged(_ sender: UITextField) {
        stateController.filterPosts(withKey: sender.text!)
        self.tableView.reloadData()
    }
}

extension CaseStudiesVC: WebDelegate {
    func startWebView(url: String) {
        self.showWebView(url: url)
    }
}
