//
//  CardTableViewCell.swift
//  Check-in App
//
//  Created by Apple on 9/9/16.
//  Copyright © 2016 PreSchool. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet weak var imgPicture: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCheckin: UILabel!
    @IBOutlet weak var lblCheckout: UILabel!
    @IBOutlet weak var btnSign: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
