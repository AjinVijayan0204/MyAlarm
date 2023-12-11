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
    
    init() {
        self.hour = "00"
        self.minute = "00"
        self.second = "00"
        self.microSecond = "00"
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
