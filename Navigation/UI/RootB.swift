//
//  RootB.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct RootB: View {
    let navigator: Navigator
    
    var body: some View {
        Screen {
            VStack {
                HeaderView(navigator: navigator, title: "Root B")
                
                Text("Root B")
                    .font(.headline)
                Spacer()
            }
        }
    }
}

#Preview {
    RootB(navigator: Navigator())
}
