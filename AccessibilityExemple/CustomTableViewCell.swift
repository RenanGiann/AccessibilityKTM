//
//  CustomTableViewCell.swift
//  AccessibilityExemple
//
//  Created by Renan Giannella​  on 08/06/20.
//  Copyright © 2020 Renan Giannella. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        logoImage.accessibilityLabel = "Foto do modelo"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
