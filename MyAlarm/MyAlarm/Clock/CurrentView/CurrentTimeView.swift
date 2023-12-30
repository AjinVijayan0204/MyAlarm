//
//  CurrentTimeView.swift
//  MyAlarm
//
//  Created by Ajin on 29/12/23.
//

import SwiftUI

struct CurrentTimeView: View {
    @ObservedObject var vm = Container.shared.currentTimeVM
    var body: some View {
        VStack{
            Text(vm.timeHourMin)
                .font(.system(size: 50))
            Text(vm.zone.identifier)
                .font(.system(size: 20))
        }
    }
}

struct CurrentTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentTimeView(vm: CurrentTimeViewModel())
    }
}
