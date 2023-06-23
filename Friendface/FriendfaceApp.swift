//
//  FriendfaceApp.swift
//  Friendface
//
//  Created by Tien Bui on 21/6/2023.
//

import SwiftUI

@main
struct FriendfaceApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
