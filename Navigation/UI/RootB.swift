//
//  RootB.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct RootB: View {
    @Binding var path: NavigationPath
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(path: $path, title: "Root B")
                
                Text("Root B")
                    .font(.headline)
                Spacer()
            }
        }
    }
}

#Preview {
    let navPath = NavigationPath()
    RootB(path: .constant(navPath))
}
