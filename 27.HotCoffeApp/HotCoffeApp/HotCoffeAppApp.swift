//
//  HotCoffeAppApp.swift
//  HotCoffeApp
//
//  Created by Payam on 1/15/21.
//

import SwiftUI

@main
struct HotCoffeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
