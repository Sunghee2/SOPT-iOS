//
//  Episode.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 08/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import Foundation
import UIKit

struct Episode {
    var episodeImg: UIImage?
    var episodeTitle: String
    var viewNum: String
    var date: String
    
    init(imgName: String, title: String, viewNum: String, date: String) {
        self.episodeImg = UIImage(named: imgName)
        self.episodeTitle = title
        self.viewNum = viewNum
        self.date = date
    }
}
