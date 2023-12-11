//
//  Coordinator.swift
//  MyAlarm
//
//  Created by Ajin on 30/11/23.
//

import Foundation
import SwiftUI

final class Coordinator: ObservableObject{
    
    func getScreens() -> [HomeTabBarItems]{
        return HomeTabBarItems.allCases
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
    
}
