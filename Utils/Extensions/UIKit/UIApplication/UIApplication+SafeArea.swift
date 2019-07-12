//
//  UIApplication+SafeArea.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension UIApplication {
    
    var safeAreaInsets: UIEdgeInsets {
        guard let insets = delegate?.window??.safeAreaInsets else {
            fatalError()
        }
        
        return insets
    }
    
}
