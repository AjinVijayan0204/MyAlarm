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
            return "Clock"
        case .Alarm:
            return "Alarm"
        case .Timer:
            return "Timer"
        case .StopWatch:
            return "Stopwatch"
        }
    }
}
