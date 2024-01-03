//
//  TimezoneView.swift
//  MyAlarm
//
//  Created by Ajin on 29/12/23.
//

import SwiftUI

struct TimezoneView: View {
    
    @ObservedObject var vm: TimezoneViewModel
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    vm.addZone()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Done")
                }
                .buttonStyle(.bordered)
            }
            .padding(.trailing, 40)
            .padding(.top, 40)
            Spacer()
            Picker(selection: $vm.selected) {
                ForEach(vm.timeZones, id: \.self){ zone in
                    Text(zone)
                }
            } label: {
                //
            }
            Spacer()
        }
    }
}

struct TimezoneView_Previews: PreviewProvider {
    static var previews: some View {
        TimezoneView(vm: TimezoneViewModel())
    }
}
