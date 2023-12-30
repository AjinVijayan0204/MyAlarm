//
//  TimezoneVM.swift
//  MyAlarm
//
//  Created by Ajin on 29/12/23.
//

import Foundation

class TimezoneViewModel: ObservableObject{
    
    var timeZones: [String]{
        TimeZone.abbreviationDictionary.values.map { data in
            data
        }
    }
    
    @Published var selected: String = TimeZone.current.identifier
    var clockVM: ClockViewModel = Container.shared.clockVM
    
    
    func addZone(){
        clockVM.addTimeZone(named: self.selected)
    }
}
