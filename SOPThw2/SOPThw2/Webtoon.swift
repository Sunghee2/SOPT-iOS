//
//  Webtoon.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import Foundation
import UIKit

struct Webtoon {
    var webtoonImg: UIImage?
    var webtoonTitle: String
    var webtoonWriter: String
    
    init(imgName: String, title: String, writer: String) {
        self.webtoonImg = UIImage(named: imgName)
        self.webtoonTitle = title
        self.webtoonWriter = writer
    }
}
