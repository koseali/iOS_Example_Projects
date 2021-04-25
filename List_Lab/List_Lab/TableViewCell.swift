//
//  TableViewCell.swift
//  List_Lab
//
//  Created by Ali Köse on 22.04.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblBaslik: UILabel!
    @IBOutlet weak var lblAciklama: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
