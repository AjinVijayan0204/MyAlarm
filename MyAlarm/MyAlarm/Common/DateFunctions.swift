//
//  DateFunctions.swift
//  MyAlarm
//
//  Created by Ajin on 21/11/23.
//

import Foundation

func getTimeFormat(for component: TimeComponent) -> DateFormatter{
    let formatter = DateFormatter()
    formatter.dateFormat = component.getFormat()
    
    return formatter
}

enum TimeComponent{
    case hourMin
    case seconds
    case meridian
}

extension TimeComponent{
    
    func getFormat() -> String{
        
        switch self{
        case .hourMin:
            return "hh:mm:ss"
        case .seconds:
            return "ss"
        case .meridian:
            return "a"
        }
    }
}
