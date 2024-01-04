//
//  CurrentTimeVM.swift
//  MyAlarm
//
//  Created by Ajin on 29/12/23.
//

import Foundation

class CurrentTimeViewModel: ObservableObject{
    
    @Published var timeHourMin: String
    @Published var seconds: String
    @Published var meridian: String
        
    var zone: TimeZone = TimeZone.current
    var updateTime: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.timeHourMin = getTimeFormat(for: .hourMinSec).string(from: Date())
            self.seconds = getTimeFormat(for: .seconds).string(from: Date())
            self.meridian = getTimeFormat(for: .meridian).string(from: Date())
        }
    }
        
    init() {
        (self.timeHourMin, self.seconds, self.meridian) = ("", "", "")
            let _ = updateTime
    }
}
