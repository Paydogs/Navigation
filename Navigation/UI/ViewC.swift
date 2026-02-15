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
                    Button("View A") {
                        navigator.presentFullScreen(AppRoute.ViewA)
                    }
                    Button("View B") {
                        navigator.presentFullScreen(AppRoute.ViewB)
                    }
                    Button("View C") {
                        navigator.presentFullScreen(AppRoute.ViewC)
                    }
                    Button("View D") {
                        navigator.presentFullScreen(AppRoute.ViewD)
                    }
                    Button("View E") {
                        navigator.presentFullScreen(AppRoute.ViewE)
                    }
                    Button("View F") {
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
