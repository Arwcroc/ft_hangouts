//
//  ft_hangoutsApp.swift
//  ft_hangouts
//
//  Created by Téo Froissart on 03/06/2024.
//

import SwiftUI

@main
struct ft_hangoutsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
