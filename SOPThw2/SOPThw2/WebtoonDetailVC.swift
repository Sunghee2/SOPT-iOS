//
//  WebtoonDetailVC.swift
//  SOPThw2
//
//  Created by Sunghee Lee on 03/05/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

class WebtoonDetailVC: UIViewController {
    
    var episodeTitle: String?
    
    @IBOutlet var btnBack: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = episodeTitle
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
    }
    
}
