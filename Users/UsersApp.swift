//
//  UsersApp.swift
//  Users
//
//  Created by Santiago Castaneda on 11/04/24.
//

import SwiftUI

@main
struct UsersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
