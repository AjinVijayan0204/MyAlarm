//
//  MyAlarmApp.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import SwiftUI

@main
struct MyAlarmApp: App {
    @Environment(\.colorScheme) var colorScheme
    var body: some Scene {
        WindowGroup {
            HomeTabView()
        }
    }
}
