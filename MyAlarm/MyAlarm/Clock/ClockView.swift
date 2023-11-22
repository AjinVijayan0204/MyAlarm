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
                HStack(spacing: 2){
                    Text(vm.timeHourMin)
                    Text(vm.meridian)
                }
                .frame(width: proxy.size.width, alignment: .center)
            }
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView(vm: ClockViewModel())
    }
}
