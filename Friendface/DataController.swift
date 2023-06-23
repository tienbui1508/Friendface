//
//  DataController.swift
//  Bookworm
//
//  Created by Tien Bui on 16/6/2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Friendface")
    
    init () {
        container.loadPersistentStores { description, error in
            
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}
