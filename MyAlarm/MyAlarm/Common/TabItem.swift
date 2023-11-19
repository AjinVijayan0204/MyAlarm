//
//  AppState.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import Foundation
import SwiftUI

enum HomeTabBarItems: Int, CaseIterable{
    case Clock = 0
    case Alarm
    case Timer
    case StopWatch
}

extension HomeTabBarItems{
    func tabTitle() -> String{
        switch self{
        case .Clock:
            return AppStrings.Home.TabBar.clock
        case .Alarm:
            return AppStrings.Home.TabBar.alarm
        case .Timer:
            return AppStrings.Home.TabBar.timer
        case .StopWatch:
            return AppStrings.Home.TabBar.stopWatch
        }
    }
    
    func tabIcon() -> String{
        switch self{
        case .Clock:
            return AppStrings.Home.TabBar.clockIcon
        case .Alarm:
            return AppStrings.Home.TabBar.alarmIcon
        case .Timer:
            return AppStrings.Home.TabBar.timerIcon
        case .StopWatch:
            return AppStrings.Home.TabBar.stopWatchIcon
        }
    }
}
