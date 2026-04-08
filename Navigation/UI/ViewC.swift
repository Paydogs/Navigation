//
//  ViewC.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//


import SwiftUI

struct ViewC: View {
    let navigator: Navigator
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(navigator: navigator, title: "View C")
                
                Text("View C")
                    .font(.headline)
                
                List {
                    Button("Present View A as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewA)
                    }
                    Button("Present View B as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewB)
                    }
                    Button("Present View C as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewC)
                    }
                    Button("Present View D as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewD)
                    }
                    Button("Present View E as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewE)
                    }
                    Button("Present View F as Fullscreen") {
                        navigator.presentFullScreen(AppRoute.ViewF)
                    }
                }
                .listStyle(.plain)
                .padding()
            }
        }
    }
}

#Preview {
    ViewC(navigator: Navigator())
}
