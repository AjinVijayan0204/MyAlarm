//
//  DateFunctions.swift
//  MyAlarm
//
//  Created by Ajin on 21/11/23.
//

import Foundation

func getTimeFormat(for component: TimeComponent, at timeZone: String = TimeZone.current.identifier) -> DateFormatter{
    let formatter = DateFormatter()
    formatter.dateFormat = component.getFormat()
    formatter.timeZone = TimeZone(identifier: timeZone)
    
    return formatter
}

func getTimeDifference(of zone: String) -> Int{
    let formatter1 = DateFormatter()
    let formatter2 = DateFormatter()
    
    formatter1.timeZone = TimeZone.current
    formatter2.timeZone = TimeZone(identifier: zone)
    
    let diff = formatter1.timeZone.secondsFromGMT() - formatter2.timeZone.secondsFromGMT()
    return diff
}

enum TimeComponent{
    case hourMin
    case seconds
    case meridian
    case hourMinSec
}

extension TimeComponent{
    
    func getFormat() -> String{
        
        switch self{
        case .hourMin:
            return "hh:mm"
        case .hourMinSec:
            return "hh:mm:ss"
        case .seconds:
            return "ss"
        case .meridian:
            return "a"
        }
    }
}
