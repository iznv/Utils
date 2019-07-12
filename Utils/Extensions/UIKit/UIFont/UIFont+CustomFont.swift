//
//  UIFont+CustomFont.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension UIFont {
    
    static func custom(font: String,
                       ofSize size: CGFloat,
                       weight: UIFont.Weight) -> UIFont? {
        
        return UIFont(name: "\(font)-\(weight.title)", size: size)
    }
    
}
