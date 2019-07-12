//
//  UIPanGestureRecognizer+Direction.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

public extension UIPanGestureRecognizer {
    
    enum Direction {
        
        case up
        
        case down
        
        case `static`
        
    }
    
}

public extension UIPanGestureRecognizer {
    
    func direction(in view: UIView) -> Direction {
        let velocity = self.velocity(in: view).y
        
        switch velocity {
        case let x where x < 0:
            return .up
        case let x where x > 0:
            return .down
        default:
            return .static
        }
    }
    
}

