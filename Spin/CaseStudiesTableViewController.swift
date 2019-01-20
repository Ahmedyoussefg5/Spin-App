//
//  CaseStudiesTableViewController.swift
//  Spin
//
//  Created by Sobhy Youssef on 6/14/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import UIKit
import Alamofire
class CaseStudiesTableViewController: UITableViewController  {

    var posts : [CaseStudiesList] = []
    var stateController : CaseStudyStateController!

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet var mytable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
        
        
        tableView.reloadData()
        
        configurePageTitle()
       
        getPosts()
        indicator.startAnimating()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
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
    
    
    func getPosts () {
        let urlString = "\(URLS.server_ip.rawValue)\(URLS.caseStudy.rawValue)/"
        
        let parameters : Parameters = [
            "username" : LoginStateController.userData.username,
            "password" : LoginStateController.userData.password,
            
            ]
        
        Alamofire.request(urlString, method: .post, parameters: parameters, encoding: URLEncoding.httpBody)
            .responseJSON { response in
                
                guard response.result.isSuccess else {
                    //completion(ErrorMessages.connectionError.rawValue)
                    return
                }
                
                print(response.result.value)
                
                if let data = response.result.value as? NSDictionary {
                    
                    let serverResponse : ServerResponse = ServerResponse(fromDictionary: data)
                    
                    if serverResponse.code == "1" {
                        self.posts = serverResponse.caseStudyList
                        self.indicator.stopAnimating()
                        self.indicator.hidesWhenStopped = true
                        
                        self.mytable.reloadData()
                        
                        
                       // completion(nil)
                        
                    } else {
                      //  completion(serverResponse.msg)
                    }
                }

        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95.0
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if self.posts.isEmpty{
            
            
            return 0
        }else{
            
            return self.posts.count
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "casestudytitle", for: indexPath)
        cell.textLabel?.text = "Case \(posts[indexPath.row].id!)"
        cell.detailTextLabel?.text = posts[indexPath.row].title
        
        let maskLayer = CAShapeLayer()
        let bounds = cell.bounds
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: 2, y: 2, width: bounds.width-4, height: bounds.height-8), cornerRadius: 5).cgPath
        cell.layer.mask = maskLayer

        // Configure the cell...

        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Tabs", bundle:nil)
        
       
            let nextVC = storyBoard.instantiateViewController(withIdentifier: "CaseStudyDetails") as! CaseStudiesVC
            nextVC.case_id = self.posts[indexPath.row].id
//            nextVC.faqanswerstring = questionsANDanswers[questionlabel] as! String
            self.navigationController!.pushViewController(nextVC, animated: true)
        
    }
    
  
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
