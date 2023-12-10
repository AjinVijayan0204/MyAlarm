//
//  TimerView.swift
//  MyAlarm
//
//  Created by Ajin on 09/12/23.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var vm: TimerViewModel
    
    var body: some View {
        VStack {
            
            HStack(spacing: 8) {
                Text(vm.hour)
                Text(":")
                Text(vm.minutes)
                Text(":")
                Text(vm.seconds)
            }
            .font(.system(size: 25))
            
            HStack {
                ForEach(TimerViewModel.ButtonTypes.allCases, id: \.self){ btn in
                    Button(action: {}) {
                        Text(btn.rawValue)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                    }
                    .buttonStyle(.bordered)
                    .tint(btn.buttonColor())
                }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(vm: TimerViewModel())
    }
}
