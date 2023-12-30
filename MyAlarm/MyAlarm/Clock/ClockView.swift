//
//  ClockView.swift
//  MyAlarm
//
//  Created by Ajin on 20/11/23.
//

import SwiftUI

struct ClockView: View {
    
    @ObservedObject var vm: ClockViewModel
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        // whole screen
        GeometryReader{ proxy in
            VStack{
                //clock view with time zone
                CurrentTimeView()
                    .frame(width: proxy.size.width, height: proxy.size.height / 6, alignment: .bottom)
                    .padding(.bottom)
                //button bar
                HStack{
                    Spacer()
                    Button {
                        coordinator.goPopUp()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 30)
                }
                .padding(.trailing, 30)
                
                List{
                    if vm.timezones.isEmpty{
                        Text("")
                    }else{
                        ForEach(vm.timezones, id: \.self){ zone in
                            Text(zone)
                        }
                    }
                }
                .frame(width: proxy.size.width, height: proxy.size.height / 1.5, alignment: .bottom)
                .border(.black)
                
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
