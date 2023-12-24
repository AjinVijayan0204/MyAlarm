//
//  StopwatchVM.swift
//  MyAlarm
//
//  Created by Ajin on 11/12/23.
//

import Foundation
import SwiftUI

class StopwatchViewModel: ObservableObject{
    @Published var hour: String
    @Published var minute: String
    @Published var second: String
    @Published var microSecond: String
    @Published var splitTimes: [TimeInterval] = []
    @Published var state: Bool = true
    
    var stopwatchTimer: Timer?
    var elapsedTime: TimeInterval = 0
    
    init() {
        self.hour = "00"
        self.minute = "00"
        self.second = "00"
        self.microSecond = "00"
    }
    
    func clearLaps(){
        self.splitTimes = []
    }
    
    func startTimer(){
        if state{
            stopwatchTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { timer in
                self.elapsedTime += timer.timeInterval
                self.parseTimeFromTimer()
                self.state = false
            })
        }else{
            stopwatchTimer?.invalidate()
            self.state = true
        }
        
    }
    
    func stopTimer(){
        stopwatchTimer?.invalidate()
        stopwatchTimer = nil
        elapsedTime = 0
        parseTimeFromTimer()
        self.state = true
    }
    
    func splitTimer(){
        if !state{
            self.splitTimes.insert(elapsedTime, at: 0)
        }
    }
    
    func parseTimeFromTimer(){
        self.microSecond = String(format:"%02d", Int(elapsedTime*100) % 100)
        self.second = String(format:"%02d", Int(elapsedTime) % 60)
        self.minute = String(format:"%02d", Int(elapsedTime)/60 % 60)
        
    }
    
    func getAction(btn: StopwatchButtons){
        switch btn{
        case .start:
            return startTimer()
        case .reset:
            return stopTimer()
        case .splitLap:
            return splitTimer()
        }
        
    }
}

extension TimeInterval{
    var timerDisplay: String{
        let micro = String(format:"%02d", Int(self*100) % 100)
        let sec = String(format:"%02d", Int(self) % 60)
        let min = String(format:"%02d", Int(self)/60 % 60)
        return "\(min):\(sec):\(micro)"
    }
}

extension StopwatchViewModel{
    enum StopwatchButtons: String, CaseIterable{
        case start
        case reset
        case splitLap
        
        var id: String{
            return self.rawValue
        }
    }
}

extension StopwatchViewModel.StopwatchButtons{
    func getButtonNames(started isStarted: Bool) -> String{
        switch self{
        case .start:
            return isStarted ? AppStrings.StopwatchViewData.start : AppStrings.StopwatchViewData.stop
        case .reset:
            return AppStrings.StopwatchViewData.reset
        case .splitLap:
            return AppStrings.StopwatchViewData.splitLap
        }
    }
    
    func buttonColor() -> Color{
        switch self{
        case .start:
            return Color.blue
        case .splitLap:
            return .accentColor
        case .reset:
            return Color.red
        }
    }
    
    
}
