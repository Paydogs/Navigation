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
    
    init(path: NavigationPath) {
        self.path = path
    }
    
    func push(_ route: AppRoute) {
        withAnimation {
            path.append(route)
        }
    }
}

struct ViewFactory {
    @ViewBuilder
    static func makeView(for route: AppRoute, path: Binding<NavigationPath>) -> some View {
        switch route {
        case .ViewA:
            ViewA(path: path)
        case .ViewB:
            ViewB(path: path)
        case .ViewC:
            ViewC(path: path)
        case .ViewD:
            ViewD(path: path)
        case .ViewE:
            ViewE()
        case .ViewF:
            ViewF()
        }
    }
}
