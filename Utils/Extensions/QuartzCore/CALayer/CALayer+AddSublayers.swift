//
//  CALayer+AddSublayers.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CALayer {
    
    func addSublayers(_ sublayers: CALayer...) {
        sublayers.forEach { layer in
            addSublayer(layer)
        }
    }
    
}
