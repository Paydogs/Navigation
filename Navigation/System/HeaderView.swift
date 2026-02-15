//
//  HeaderBar.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct HeaderView: View {
    let navigator: Navigator
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            // Custom title bar — renders instantly with the view
            HStack {
                Group {
                    if (navigator.showBackButton()) {
                        Button {
                            navigator.pop()
                        } label: {
                            Image(systemName: "chevron.left")
                        }
                    }
                    
                    if navigator.showCloseSheetButton() {
                        Button {
                            navigator.dismissSheet()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                    
                    if navigator.showCloseFullscreenButton() {
                        Button {
                            navigator.dismissFullScreen()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
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
    HeaderView(navigator: Navigator(), title: "Header Bar")
}
