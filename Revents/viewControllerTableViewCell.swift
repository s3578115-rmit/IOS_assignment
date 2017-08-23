//
//  viewControllerTableViewCell.swift
//  Revents
//
//  Created by Niraj  Bohra on 8/23/17.
//  Copyright © 2017 Niraj  Bohra. All rights reserved.
//

import UIKit

class viewTableControllerCell:UITableViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myEvent: UILabel!
    
    @IBOutlet weak var myAddress: UILabel!
    
    @IBOutlet weak var myDate: UILabel!
   
    @IBOutlet weak var myTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
