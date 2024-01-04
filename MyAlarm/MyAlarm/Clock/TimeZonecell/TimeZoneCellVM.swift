//
//  TimeZoneCellVM.swift
//  MyAlarm
//
//  Created by Ajin on 03/01/24.
//

import Foundation

class TimeZoneCellViewModel: ObservableObject{
    
    @Published var zone: String
    @Published var time: String
    @Published var meridian: String
    @Published var difference: (String, String)
    
    var timeZone: String
    
    init(timeZone: String) {
        self.timeZone = timeZone
        self.time = "00:00"
        self.meridian = "am"
        self.difference = ("10","30")
        self.zone = ""
        getZone()
    }
    
    func getZone(){
        var zone = TimeZone.abbreviationDictionary[self.timeZone] ?? TimeZone.current.identifier
        zone = String(zone.split(separator: "/").last ?? "")
        self.zone = zone
    }
    
    func getTime(){
        
    }
}
