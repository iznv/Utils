//
//  UIStackView+Clear.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import UIKit

public extension UIStackView {
    
    func clear() {
        arrangedSubviews.forEach { $0.removeFromSuperview() }
    }
    
}
