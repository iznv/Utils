//
//  Dictionary+MapPairs.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import Foundation

public extension Dictionary {

    init(_ pairs: [Element]) {
        self.init()
        pairs.forEach { key, value in self[key] = value }
    }

    func mapPairs<OutKey: Hashable, OutValue>(_ transform: (Element)
        throws -> (OutKey, OutValue))
        rethrows -> [OutKey: OutValue] {

            return [OutKey: OutValue](try map(transform))
    }

}
