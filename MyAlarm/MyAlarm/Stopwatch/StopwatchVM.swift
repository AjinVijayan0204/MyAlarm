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
    
    var stopwatchTimer: Timer?
    var elapsedTime: TimeInterval = 0
    
    init() {
        self.hour = "00"
        self.minute = "00"
        self.second = "00"
        self.microSecond = "00"
    }
    
    func startTimer(){
        stopwatchTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { timer in
            self.elapsedTime += timer.timeInterval
            self.parseTimeFromTimer()
        })
    }
    
    func stopTimer(){
        stopwatchTimer?.invalidate()
        stopwatchTimer = nil
        elapsedTime = 0
        parseTimeFromTimer()
    }
    
    func parseTimeFromTimer(){
        self.microSecond = String(format:"%02d", Int(elapsedTime*100) % 100)
        self.second = String(format:"%02d", Int(elapsedTime) % 60)
        self.minute = String(format:"%02d", Int(elapsedTime)/60 % 60)
        
    }
    
    func getAction(btn: StopwatchButtons) -> (){
        switch btn{
        case .start:
            return startTimer()
        case .reset:
            return stopTimer()
        default:
            return stopTimer()
        }
        
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
    func getButtonNames() -> String{
        switch self{
        case .start:
            return AppStrings.StopwatchViewData.start
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
            return Color.gray
        case .reset:
            return Color.red
        }
    }
    
    
}
