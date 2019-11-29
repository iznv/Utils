//
//  UIView+Animation.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import UIKit

public extension UIView {

    func crossDissolveTransition(duration: TimeInterval = 0.3,
                                 closure: @escaping () -> Void) {
        
        crossDissolveTransition(duration: duration,
                                closure: closure,
                                completion: nil)
    }

    func crossDissolveTransition(duration: TimeInterval = 0.3,
                                 closure: @escaping () -> Void,
                                 completion: (() -> Void)? = nil) {
        
        UIView.transition(with: self,
                          duration: duration,
                          options: .transitionCrossDissolve,
                          animations: closure) { _ in
            completion?()
        }
    }

}
