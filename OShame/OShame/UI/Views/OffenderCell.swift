//
//  OffenderCell.swift
//  OShame
//
//  Created by Mauricio Chirino on 26/8/18.
//  Copyright © 2018 Mauricio Chirino. All rights reserved.
//

import UIKit

class OffenderCell: UITableViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    func setInfo(with offender: OffenderModel) {
        nameLabel.text = offender.name
        counterLabel.text = "\(offender.total)"
    }
}

