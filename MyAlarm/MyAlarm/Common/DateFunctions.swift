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
