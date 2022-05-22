//
//  DepdencyInjectionApp.swift
//  Shared
//
//  Created by Guerin Steven Colocho Chacon on 22/05/22.
//

import SwiftUI

@main
struct DepdencyInjectionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
