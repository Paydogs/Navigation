//
//  ViewA.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct ViewA: View {
    let navigator: Navigator
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(navigator: navigator, title: "View A")
                
                Text("View A")
                    .font(.headline)
                
                List {
                    Button("Push View A") {
                        navigator.push(AppRoute.ViewA)
                    }
                    Button("Push View B") {
                        navigator.push(AppRoute.ViewB)
                    }
                    Button("Push View C") {
                        navigator.push(AppRoute.ViewC)
                    }
                    Button("Push View D") {
                        navigator.push(AppRoute.ViewD)
                    }
                    Button("Push View E") {
                        navigator.push(AppRoute.ViewE)
                    }
                    Button("Push View F") {
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
    ViewA(navigator: Navigator())
}
