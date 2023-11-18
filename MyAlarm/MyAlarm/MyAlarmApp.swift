//
//  MyAlarmApp.swift
//  MyAlarm
//
//  Created by Ajin on 18/11/23.
//

import SwiftUI

@main
struct MyAlarmApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
