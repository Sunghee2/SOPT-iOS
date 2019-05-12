//
//  WebtoonListCell.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class WebtoonListCell: UITableViewCell {

    @IBOutlet var episodeImg: UIImageView!
    @IBOutlet var episodeTitle: UILabel!
    @IBOutlet var episodeViewNum: UILabel!
    @IBOutlet var episodeDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        episodeImg.layer.cornerRadius = 3
//        episodeImg.layer.masksToBounds = true
    }

}
