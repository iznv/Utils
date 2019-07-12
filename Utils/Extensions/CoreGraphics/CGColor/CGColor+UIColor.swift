//
//  CGColor+UIColor.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CGColor {
    
    var uiColor: UIColor {
        return UIColor(cgColor: self)
    }
    
}
