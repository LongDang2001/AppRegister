//
//  MasterTableViewCell.swift
//  Register
//
//  Created by admin on 4/4/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbCodeCity: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
