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
                    Button("Present View A as Sheet") {
                        navigator.presentSheet(AppRoute.ViewA)
                    }
                    Button("Present View B as Sheet") {
                        navigator.presentSheet(AppRoute.ViewB)
                    }
                    Button("Present View C as Sheet") {
                        navigator.presentSheet(AppRoute.ViewC)
                    }
                    Button("Present View D as Sheet") {
                        navigator.presentSheet(AppRoute.ViewD)
                    }
                    Button("Present View E as Sheet") {
                        navigator.presentSheet(AppRoute.ViewE)
                    }
                    Button("Present View F as Sheet") {
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
