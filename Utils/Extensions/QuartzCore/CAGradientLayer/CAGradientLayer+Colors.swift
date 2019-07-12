//
//  CAGradientLayer+Colors.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CAGradientLayer {
    
    func set(colors: [UIColor]) {
        self.colors = colors.map { $0.cgColor }
    }
    
}
