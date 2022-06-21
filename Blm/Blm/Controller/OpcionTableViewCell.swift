//
//  OpcionTableViewCell.swift
//  Blm
//
//  Created by catalina lozano on 08/06/22.
//

import UIKit

class OpcionTableViewCell: UITableViewCell {

    @IBOutlet weak var opcionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
