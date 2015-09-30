//
//  ContactCustomCell.swift
//  LocationChat
//
//  Created by Neegbeah Reeves on 9/30/15.
//
//

import UIKit

class ContactCustomCell: UITableViewCell {
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactProfilePic: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
