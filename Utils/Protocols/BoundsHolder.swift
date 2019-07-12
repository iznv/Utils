//
//  BoundsHolder.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public protocol BoundsHolder {
    
    var bounds: CGRect { get }
    
}

extension CALayer: BoundsHolder { }

extension UIView: BoundsHolder { }
