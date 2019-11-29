//
//  Array+Chunked.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import Foundation

public extension Array {
    
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }

}
