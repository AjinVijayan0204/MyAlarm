//
//  MyAlarmApp.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import SwiftUI

@main
struct MyAlarmApp: App {
    @State var coordinator: Coordinator = Coordinator()
    var body: some Scene {
        WindowGroup {
            HomeTabView()
                .environmentObject(coordinator)
        }
    }
}
