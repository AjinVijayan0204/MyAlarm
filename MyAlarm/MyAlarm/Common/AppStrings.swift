//
//  AppStrings.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import Foundation
import SwiftUI

struct AppStrings{
    
    struct Home{
        struct TabBar{
            //labels
            public static let clock = String(localized: "Clock")
            public static let alarm = String(localized: "Alarm")
            public static let timer = String(localized: "Timer")
            public static let stopWatch = String(localized: "Stopwatch")
            
            
            // icons
            public static let clockIcon = "clock"
            public static let alarmIcon = "alarm"
            public static let timerIcon = "timer"
            public static let stopWatchIcon = "stopwatch"
            
        }
    }
    
    struct TimeViewData{
        public static let stop = String(localized: "Stop")
        public static let pause = String(localized: "Pause")
        public static let start = String(localized: "Start")
    }
    
    struct StopwatchViewData{
            public static let reset = String(localized: "Reset")
            public static let splitLap = String(localized: "Split")
            public static let start = String(localized: "Start")
            public static let stop = String(localized: "Stop")
        }

}
