//
//  UIScrollView+Extensions.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension UIScrollView {
    
    func scrollToTop(shouldLayoutBefore: Bool = true,
                     animated: Bool = true) {
        
        if shouldLayoutBefore {
            layoutIfNeeded()
        }
        
        setContentOffset(.zero, animated: animated)
    }
    
}
