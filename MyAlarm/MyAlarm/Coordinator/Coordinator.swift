//
//  Coordinator.swift
//  MyAlarm
//
//  Created by Ajin on 30/11/23.
//

import Foundation
import SwiftUI

final class Coordinator: ObservableObject{
    
    @Published var currentTab: HomeTabBarItems = .Clock
    @Published var sheet: Sheet?
    var container = Container.shared
    
    func getScreens() -> [HomeTabBarItems]{
        return HomeTabBarItems.allCases
    }
    
    func goPopUp(){
        sheet = .popup
    }
    
    @ViewBuilder
    func getView(_ page: HomeTabBarItems) -> some View{
        
        switch page{
        case .Clock:
            ClockView(vm: container.clockVM)
        case .Timer:
            TimerView(vm: container.timerVM)
        case .StopWatch:
            StopwatchView(vm: container.stopwatchVM)
        default:
            Text("View in progress")
        }
    }
    
    @ViewBuilder
    func getPopUpView(_ sheet: Sheet) -> some View{
        switch sheet{
        case .popup:
            TimezoneView(vm: Container.shared.timeVM)
                .presentationDetents([.height(300), .medium])
        }
    }
}

enum Sheet: String, CaseIterable, Identifiable{
    case popup
    
    var id: String{ self.rawValue }
}
