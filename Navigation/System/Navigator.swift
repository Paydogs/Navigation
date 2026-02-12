//
//  Navigator.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI
import Combine

enum AppRoute: Hashable {
    case ViewA
    case ViewB
    case ViewC
    case ViewD
    case ViewE
    case ViewF
}

class Navigator: ObservableObject {
    @Published var path: NavigationPath
    
    init() {
        self.path = NavigationPath()
    }
    
    func push(_ route: AppRoute) {
        withAnimation {
            path.append(route)
        }
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        withAnimation {
            path.removeLast()
        }
    }
}

struct ViewFactory {
    @ViewBuilder
    static func makeView(for route: AppRoute, navigator: Navigator) -> some View {
        switch route {
        case .ViewA:
            ViewA(navigator: navigator)
        case .ViewB:
            ViewB(navigator: navigator)
        case .ViewC:
            ViewC(navigator: navigator)
        case .ViewD:
            ViewD(navigator: navigator)
        case .ViewE:
            ViewE()
        case .ViewF:
            ViewF()
        }
    }
}
