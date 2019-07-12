//
//  UIView+AddSubviews.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension UIView {
    
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            addSubview(subview)
        }
    }
    
}
