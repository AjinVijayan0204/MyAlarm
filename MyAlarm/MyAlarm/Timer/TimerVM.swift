//
//  TimerVM.swift
//  MyAlarm
//
//  Created by Ajin on 09/12/23.
//

import Foundation
import SwiftUI

class TimerViewModel: ObservableObject{
    @Published var hour: String
    @Published var minutes: String
    @Published var seconds: String
    
    init() {
        self.hour = "00"
        self.minutes = "00"
        self.seconds = "00"
    }
    
    
}

extension TimerViewModel{
    
    enum ButtonTypes: String, CaseIterable{
        case Start
        case Pause
        case Stop
        
        var id: String {
            return self.rawValue
        }
    }
    
}

extension TimerViewModel.ButtonTypes{
    
    func buttonColor() -> Color{
        switch self{
        case .Start:
            return Color.blue
        case .Pause:
            return Color.gray
        case .Stop:
            return Color.red
        }
    }
    
    func buttonText() -> String{
        switch self{
        case .Start:
            return AppStrings.TimeViewData.start
        case .Pause:
            return AppStrings.TimeViewData.pause
        case .Stop:
            return AppStrings.TimeViewData.stop
        }
    }
    
}
