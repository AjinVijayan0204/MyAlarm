//
//  Container.swift
//  MyAlarm
//
//  Created by Ajin on 30/12/23.
//

import Foundation

class Container{
    
    static var shared = Container()
    
    lazy var clockVM: ClockViewModel = ClockViewModel()
    lazy var currentTimeVM: CurrentTimeViewModel = CurrentTimeViewModel()
    lazy var timeVM: TimezoneViewModel = TimezoneViewModel()
    lazy var timerVM: TimerViewModel = TimerViewModel()
    lazy var stopwatchVM: StopwatchViewModel = StopwatchViewModel()
    
}
