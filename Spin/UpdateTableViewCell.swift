//
//  UpdateTableViewCell.swift
//  Spin
//
//  Created by Ahmed on 2/10/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class UpdateTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewPic: UIImageView!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelBody: UILabel!
    
    var delegate: WebDelegate!
    var link : String!
    
    @IBAction func btnViewClicked(_ sender: UIButton) {
        delegate.startWebView(url: link!)
    }
    
}
