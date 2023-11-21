//
//  DateFunctions.swift
//  MyAlarm
//
//  Created by Ajin on 21/11/23.
//

import Foundation

func getTimeFormat() -> DateFormatter{
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm ss a"
    
    return formatter
}
