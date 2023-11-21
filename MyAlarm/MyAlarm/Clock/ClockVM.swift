//
//  ClockVM.swift
//  MyAlarm
//
//  Created by Ajin on 20/11/23.
//

import Foundation
import Combine

class ClockViewModel: ObservableObject{
    
    @Published var time: String
    
    var updateTime: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.time = getTimeFormat().string(from: Date())
        }
    }
    
    init() {
        self.time = ""
        let _ = updateTime
    }
}
