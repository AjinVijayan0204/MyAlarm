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
    
    init() {
        self.time = ""
    }
}
