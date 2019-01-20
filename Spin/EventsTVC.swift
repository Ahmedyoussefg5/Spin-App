//
//  EventsTVC.swift
//  Spin
//
//  Created by Ahmed on 2/25/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class EventsTVC: UITableViewCell {

    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelDetails: UILabel!
    @IBOutlet weak var imageViewEvent: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
