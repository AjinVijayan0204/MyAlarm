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
    var updateTime: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.getTime()
        }
    }
    
    init(timeZone: String) {
        self.timeZone = timeZone
        self.time = "00:00"
        self.meridian = "am"
        self.difference = ("10","30")
        self.zone = ""
        getZone()
        let _ = updateTime
    }
    
    func getZone(){
        var zone = TimeZone.abbreviationDictionary[self.timeZone] ?? TimeZone.current.identifier
        zone = String(zone.split(separator: "/").last ?? "")
        self.zone = zone
    }
    
    func getTime(){
        self.time = getTimeFormat(for: .hourMin, at: timeZone).string(from: Date())
        self.meridian = getTimeFormat(for: .meridian, at: timeZone).string(from: Date())
        //print(getTimeDifference(of: timeZone))
        let min = (getTimeDifference(of: timeZone) % 3600) / 60
        let hour = getTimeDifference(of: timeZone) / (60 * 60)
        self.difference = (String(hour), String(min))
    }
}
