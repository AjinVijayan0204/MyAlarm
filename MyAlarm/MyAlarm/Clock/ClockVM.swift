//
//  ClockVM.swift
//  MyAlarm
//
//  Created by Ajin on 20/11/23.
//

import Foundation
import Combine

class ClockViewModel: ObservableObject{
    
    @Published var timeHourMin: String
    @Published var seconds: String
    @Published var meridian: String
    
    var updateTime: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.timeHourMin = getTimeFormat(for: .hourMin).string(from: Date())
            self.seconds = getTimeFormat(for: .seconds).string(from: Date())
            self.meridian = getTimeFormat(for: .meridian).string(from: Date())
        }
    }
    
    init() {
        (self.timeHourMin, self.seconds, self.meridian) = ("", "", "")
        let _ = updateTime
    }
}
