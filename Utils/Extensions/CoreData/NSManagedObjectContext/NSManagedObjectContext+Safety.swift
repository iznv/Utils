//
//  NSManagedObjectContext+Safety.swift
//  Utils
//
//  Created by Ivan Zinovyev on 29/11/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

import CoreData

public extension NSManagedObjectContext {
    
    func saveSafely() {
        do {
            try save()
        } catch { }
    }
    
    func fetchSafely<T: NSManagedObject>(_ request: NSFetchRequest<T>) -> [T]? {
        do {
            let result: [T] = try fetch(request)
            return result
        } catch {
            return nil
        }
    }
    
    func executeSafely(_ request: NSBatchDeleteRequest) {
        do {
            try execute(request)
        } catch { }
    }
    
}
