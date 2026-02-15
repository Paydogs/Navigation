//
//  Navigator.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import SwiftUI
import Combine

enum AppRoute: Hashable, Identifiable {
    case ViewA
    case ViewB
    case ViewC
    case ViewD
    case ViewE
    case ViewF
    
    var id: String {
        switch self {
        case .ViewA: return "ViewA"
        case .ViewB: return "ViewB"
        case .ViewC: return "ViewC"
        case .ViewD: return "ViewD"
        case .ViewE: return "ViewE"
        case .ViewF: return "ViewF"
        }
    }
}

class Navigator: ObservableObject {
    @Published var path: NavigationPath
    @Published var presentedSheet: AppRoute?
    @Published var presentedFullScreen: AppRoute?
    
    init() {
        self.path = NavigationPath()
    }
    
    func showBackButton() -> Bool {
        path.count > 0 &&
        presentedSheet == nil &&
        presentedFullScreen == nil
    }
    
    func showCloseSheetButton() -> Bool {
        presentedSheet != nil
    }
    
    func showCloseFullscreenButton() -> Bool {
        presentedFullScreen != nil
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
    
    func presentSheet(_ route: AppRoute) {
        presentedSheet = route
    }
    
    func presentFullScreen(_ route: AppRoute) {
        presentedFullScreen = route
    }
    
    func dismissSheet() {
        presentedSheet = nil
    }
    
    func dismissFullScreen() {
        presentedFullScreen = nil
    }
    
    func dismissAll() {
        presentedSheet = nil
        presentedFullScreen = nil
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
