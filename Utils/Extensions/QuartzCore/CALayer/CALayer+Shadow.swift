//
//  CALayer+Shadow.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CALayer {
    
    func addShadow(color: UIColor = .black,
                   radius: CGFloat = 10,
                   opacity: Float = 0.5,
                   dx: CGFloat = 0,
                   dy: CGFloat = 0) {
        
        shadowColor = color.cgColor
        shadowRadius = radius
        shadowOpacity = opacity
        shadowOffset = CGSize(width: dx, height: dy)
        
        shouldRasterize = true
        rasterizationScale = UIScreen.main.nativeScale
    }
    
}
