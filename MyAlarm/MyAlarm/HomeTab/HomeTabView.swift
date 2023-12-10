//
//  HomeTabView.swift
//  MyAlarm
//
//  Created by Ajin on 19/11/23.
//

import SwiftUI

struct HomeTabView: View {
    @EnvironmentObject var coordinator: Coordinator
    var body: some View {
        TabView {
            ForEach(coordinator.getScreens(), id: \.self){ tab in
                coordinator.getView(tab)
                    .tabItem {
                        Label(tab.tabTitle(), systemImage: tab.tabIcon())
                    }
                    .tag(tab.rawValue)
            }
        }
        .tint(Color(UIColor(named: "lightAndDark")!))
    }
}

struct HomeTabView_Previews: PreviewProvider {
    @State static var coordinator = Coordinator()
    static var previews: some View {
        HomeTabView()
            .environmentObject(coordinator)
    }
}
