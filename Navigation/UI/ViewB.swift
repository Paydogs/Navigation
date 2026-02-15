//
//  ViewB.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//


import SwiftUI

struct ViewB: View {
    let navigator: Navigator
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(navigator: navigator, title: "View B")
                
                Text("View B")
                    .font(.headline)
                
                List {
                    Button("View A") {
                        navigator.presentSheet(AppRoute.ViewA)
                    }
                    Button("View B") {
                        navigator.presentSheet(AppRoute.ViewB)
                    }
                    Button("View C") {
                        navigator.presentSheet(AppRoute.ViewC)
                    }
                    Button("View D") {
                        navigator.presentSheet(AppRoute.ViewD)
                    }
                    Button("View E") {
                        navigator.presentSheet(AppRoute.ViewE)
                    }
                    Button("View F") {
                        navigator.presentSheet(AppRoute.ViewF)
                    }
                }
                .listStyle(.plain)
                .padding()
            }
        }
    }
}

#Preview {
    ViewB(navigator: Navigator())
}
