//
//  StopwatchView.swift
//  MyAlarm
//
//  Created by Ajin on 11/12/23.
//

import SwiftUI

struct StopwatchView: View {
    @ObservedObject var vm: StopwatchViewModel
        var body: some View {
            VStack {
                
                HStack(spacing: 8) {
                    Text(vm.hour)
                    Text(":")
                    Text(vm.minute)
                    Text(":")
                    Text(vm.second)
                    Text(":")
                    Text(vm.microSecond)
                    
                }
                .font(.system(size: 25))
                .padding(.top, 150)
                
                HStack {
                    ForEach(StopwatchViewModel.StopwatchButtons.allCases, id: \.self){ btn in
                        Button(action: {
                            vm.getAction(btn: btn)
                        }) {
                            Text(btn.getButtonNames(started: vm.state))
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                        }
                        .buttonStyle(.bordered)
                        .tint(btn.buttonColor())
                    }
                }
                
                SplitTimesView(vm: vm)
                    .padding(.top, 50)
                    .padding(.bottom,50)
            }
        }
        
        private struct SplitTimesView: View{
            @ObservedObject var vm: StopwatchViewModel
            var body: some View{
                
                VStack{
                    Text("Laps")
                    List {
                        ForEach(vm.splitTimes, id: \.self) { data in
                            Text(data.timerDisplay)
                        }
                    }
                }
            }
        }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView(vm: StopwatchViewModel())
    }
}
