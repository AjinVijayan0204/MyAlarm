//
//  HomeTabView.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import SwiftUI

struct HomeTabView: View {
    
    var body: some View {
        TabView {
            ForEach(HomeTabBarItems.allCases, id: \.self){ tab in
                ClockView(vm: ClockViewModel())
                    .tabItem {
                        Label(tab.tabTitle(), systemImage: tab.tabIcon())
                    }
            }
        }
        .tint(Color(UIColor(named: "lightAndDark")!))
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
