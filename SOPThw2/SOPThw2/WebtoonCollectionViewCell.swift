//
//  WebtoonCollectionViewCell.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class WebtoonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var webtoonImg: UIImageView!
    @IBOutlet var webtoonTitle: UILabel!
    @IBOutlet var webtoonWriter: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
//        albumImg.layer.cornerRadius = 3
//        albumImg.layer.masksToBounds = true
    }
}
