//
//  TVC_XibLab.swift
//  Table_View_Lab
//
//  Created by Ali Köse on 20.04.2021.
//

import UIKit

class TVC_XibLab: UITableViewCell {

    @IBOutlet weak var imgvPerson: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
