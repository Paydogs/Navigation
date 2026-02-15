//
//  RootView.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct RootView: View {
    @StateObject private var navigatorA = Navigator()
    @StateObject private var navigatorB = Navigator()
    
    var body: some View {
        TabView {
            NavigationStack(path: $navigatorA.path) {
                RootA(navigator: navigatorA)
                    .navigationDestination(for: AppRoute.self, destination: { appRoute in
                        ViewFactory.makeView(for: appRoute, navigator: navigatorA)
                    })
            }
            .sheet(item: $navigatorA.presentedSheet) { appRoute in
                ViewFactory.makeView(for: appRoute, navigator: navigatorA)
            }
            .fullScreenCover(item: $navigatorA.presentedFullScreen) { appRoute in
                ViewFactory.makeView(for: appRoute, navigator: navigatorA)
            }
            .tabItem {
                Label("Root A", systemImage: "house")
            }
            
            NavigationStack(path: $navigatorB.path) {
                RootB(navigator: navigatorB)
            }
            .sheet(item: $navigatorA.presentedSheet) { sheet in
                
            }
            .fullScreenCover(item: $navigatorA.presentedFullScreen) { fullScreen in
                
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
