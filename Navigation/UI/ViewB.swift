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
                        navigator.push(AppRoute.ViewA)
                    }
                    Button("View B") {
                        navigator.push(AppRoute.ViewB)
                    }
                    Button("View C") {
                        navigator.push(AppRoute.ViewC)
                    }
                    Button("View D") {
                        navigator.push(AppRoute.ViewD)
                    }
                    Button("View E") {
                        navigator.push(AppRoute.ViewE)
                    }
                    Button("View F") {
                        navigator.push(AppRoute.ViewF)
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
