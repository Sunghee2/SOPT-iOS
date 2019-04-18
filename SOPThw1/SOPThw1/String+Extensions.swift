//
//  String+Extensions.swift
//  SOPThw1
//
//  Created by Sunghee Lee on 17/04/2019.
//  Copyright © 2019 Sunghee Lee. All rights reserved.
//

import UIKit

extension String {
    func validateEmail() -> Bool {
        let emailRegEx = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
    }
}
