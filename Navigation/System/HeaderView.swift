//
//  HeaderBar.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct HeaderView: View {
    @Binding var path: NavigationPath
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            // Custom title bar — renders instantly with the view
            HStack {
                Group {
                    Button {
                        guard !path.isEmpty else { return }
                        path.removeLast()
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                    .hidden(path.isEmpty)
                }
                .frame(width: 40)
                Spacer()
                Text(title)
                    .font(.headline)
                Spacer()
                Color.clear.frame(width: 40) // balance the back button
            }
            .padding()
        }
        .frame(height: 64)
        .navigationBarHidden(true)
    }
}

#Preview {
    let navPath = NavigationPath()
    HeaderView(path: .constant(navPath), title: "Header Bar")
}
