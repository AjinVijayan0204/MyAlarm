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
            ClockView(vm: ClockViewModel())
        case .Timer:
            TimerView(vm: TimerViewModel())
        case .StopWatch:
            StopwatchView(vm: StopwatchViewModel())
        default:
            Text("View in progress")
        }
    }
    
    @ViewBuilder
    func getPopUpView(_ sheet: Sheet) -> some View{
        switch sheet{
        case .popup:
            TimezoneView()
        }
    }
}

enum Sheet: String, CaseIterable, Identifiable{
    case popup
    
    var id: String{ self.rawValue }
}
