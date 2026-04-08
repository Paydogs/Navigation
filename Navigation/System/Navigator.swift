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

extension Navigator {
    func isSheetPresented() -> Bool {
        return !presentedSheetPath.isEmpty
    }
}

extension Navigator {
    
}

class Navigator: ObservableObject {
    @Published var path: NavigationPath
//    @Published var presentedSheet: AppRoute?
//    @Published var presentedFullScreen: AppRoute?
    @Published var presentedSheetPath: NavigationPath
    @Published var presentedFullScreenPath: NavigationPath
    
    init() {
        self.path = NavigationPath()
        self.presentedSheetPath = NavigationPath()
        self.presentedFullScreenPath = NavigationPath()
    }
    
    func showBackButton() -> Bool {
        path.count > 0 &&
        presentedSheetPath.isEmpty &&
        presentedFullScreenPath.isEmpty
    }
    
    func showCloseSheetButton() -> Bool {
        presentedSheetPath.count > 0
    }
    
    func showCloseFullscreenButton() -> Bool {
        presentedFullScreenPath.count > 0
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
        presentedSheetPath.append(route)
        
    }
    
    func presentFullScreen(_ route: AppRoute) {
        presentedFullScreenPath.append(route)
    }
    
    func dismissSheet() {
        presentedSheetPath.removeLast(presentedSheetPath.count)
    }
    
    func dismissFullScreen() {
        presentedFullScreenPath.removeLast(presentedFullScreenPath.count)
    }
    
    func dismissAll() {
        presentedSheetPath.removeLast(presentedSheetPath.count)
        presentedFullScreenPath.removeLast(presentedFullScreenPath.count)
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
