//
//  ViewC.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//


import SwiftUI

struct ViewC: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(path: $path, title: "View C")
                
                Text("View C")
                    .font(.headline)
                
                List {
                    Button("View A") {
                        path.append(AppRoute.ViewA)
                    }
                    Button("View B") {
                        print("B pressed")
                        path.append(AppRoute.ViewB)
                    }
                    Button("View C") {
                        print("C pressed")
                        path.append(AppRoute.ViewC)
                    }
                    Button("View D") {
                        print("D pressed")
                        path.append(AppRoute.ViewD)
                    }
                    Button("View E") {
                        print("E pressed")
                        path.append(AppRoute.ViewE)
                    }
                    Button("View F") {
                        print("F pressed")
                        path.append(AppRoute.ViewF)
                    }
                }
                .listStyle(.plain)
                .padding()
            }
        }
    }
}

#Preview {
    let navPath = NavigationPath()
    ViewC(path: .constant(navPath))
}
