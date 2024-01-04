//
//  TimeZoneCellVM.swift
//  MyAlarm
//
//  Created by Ajin on 03/01/24.
//

import Foundation

class TimeZoneCellViewModel: ObservableObject{
    
    var zone: String
    @Published var time: String
    @Published var meridian: String
    var difference: (String, String)
    var change: String{
        if diffInSec < 0{
            return "ahead"
        }else{
            return "behind"
        }
    }
    
    var timeZone: String
    var diffInSec: Int
    var updateTime: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.getTime()
        }
    }
    
    init(timeZone: String) {
        self.timeZone = timeZone
        self.diffInSec = getTimeDifference(of: timeZone)
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
        let min = abs((diffInSec % 3600) / 60)
        let hour = abs(diffInSec / (60 * 60))
        self.difference = (String(hour), String(min))
    }
}
