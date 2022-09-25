//
//  unicode_sampleApp.swift
//  unicode-sample
//
//  Created by Hiroaki-Hirabayashi on 2022/09/25.
//

import SwiftUI

@main
struct unicode_sampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
