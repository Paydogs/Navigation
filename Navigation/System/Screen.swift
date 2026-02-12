//
//  Screen.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI

struct Screen<Content>: View where Content: View {
    private let content: () -> Content
    
    public init(content: @escaping () -> Content) {
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            Color(.clear).edgesIgnoringSafeArea(.all).accessibilityHidden(true)
            content()
        }
    }
}
