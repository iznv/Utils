//
//  CALayer+Layout.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension CALayer {
    
    func layout(leftPadding: CGFloat = 0,
                topPadding: CGFloat = 0,
                rightPadding: CGFloat = 0,
                bottomPadding: CGFloat = 0,
                relativeTo parent: BoundsHolder) {
        
        frame = CGRect(x: leftPadding,
                       y: topPadding,
                       width: parent.bounds.width - leftPadding - rightPadding,
                       height: parent.bounds.height - topPadding - bottomPadding)
    }
    
    func layout(leftMargin: CGFloat = 0,
                topMargin: CGFloat = 0,
                width: CGFloat,
                height: CGFloat) {
        
        frame = CGRect(x: leftMargin,
                       y: topMargin,
                       width: width,
                       height: height)
    }
    
}
