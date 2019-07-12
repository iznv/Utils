//
//  NSLayoutConstraint+Priority.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension NSLayoutConstraint {
    
    func with(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
    
}
