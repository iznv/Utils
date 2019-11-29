//
//  Dictionary+Operators.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import Foundation

public extension Dictionary {

    static func + (left: Dictionary,
                   right: Dictionary) -> Dictionary {

        var dictionary = left

        for (key, value) in right {
            dictionary[key] = value
        }

        return dictionary
    }

}
