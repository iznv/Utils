//
//  CGFloat+Sign.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CGFloat {
    
    var isPositive: Bool {
        return self > 0
    }
    
    var isNegative: Bool {
        return self < 0
    }
    
}
