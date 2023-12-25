//
//  ClockView.swift
//  MyAlarm
//
//  Created by Ajin on 20/11/23.
//

import SwiftUI

struct ClockView: View {
    @ObservedObject var vm: ClockViewModel
    var body: some View {
        VStack{
            
            GeometryReader{ proxy in
                CurrentTimeView(vm: vm)
                    .frame(width: proxy.size.width, height: proxy.size.height / 4, alignment: .center)
            }
            
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        ClockView(vm: ClockViewModel())
            .environmentObject(coordinator)
    }
}
