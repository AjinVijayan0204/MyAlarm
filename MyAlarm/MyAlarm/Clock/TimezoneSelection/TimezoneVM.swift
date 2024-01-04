//
//  TimezoneVM.swift
//  MyAlarm
//
//  Created by Ajin on 29/12/23.
//

import Foundation

class TimezoneViewModel: ObservableObject{
    
    var timeZones: [String]{
        TimeZone.abbreviationDictionary.keys.map { data in
            data
        }
    }
    
    @Published var selected: String = TimeZone.abbreviationDictionary.first { (_, value) in
        value == TimeZone.current.identifier
    }!.key
    var clockVM: ClockViewModel = Container.shared.clockVM
    
    func addZone(){
        clockVM.addTimeZone(named: self.selected)
    }
    
    func getZone(for zone: String) -> String {
        return TimeZone.abbreviationDictionary[zone] ?? TimeZone.current.identifier
    }
}
