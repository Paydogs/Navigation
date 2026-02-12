//
//  RootView.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct RootView: View {
    @State private var rootAPath = NavigationPath()
    @State private var rootBPath = NavigationPath()
    
    var body: some View {
        TabView {
            NavigationStack(path: $rootAPath) {
                RootA(path: $rootAPath)
                    .navigationDestination(for: AppRoute.self, destination: { appRoute in
                        ViewFactory.makeView(for: appRoute, path: $rootAPath)
                    })
            }
            .tabItem {
                Label("Root A", systemImage: "house")
            }

            NavigationStack(path: $rootAPath) {
                RootB(path: $rootBPath)
            }
            .tabItem {
                Label("Root B", systemImage: "gear")
            }
        }
    }
}

#Preview {
    RootView()
}
