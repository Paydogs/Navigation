//
//  ReadOnlyBinding.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 15..
//

import SwiftUI

extension Binding {
    static func readOnly(_ value: Value) -> Binding<Value> {
        Binding(
            get: { value },
            set: { _ in
                print("Attempted to mutate a read-only binding.")
            }
        )
    }
}

extension Binding {
    /// Creates a read-only binding from a closure.
    static func readOnly(_ getter: @escaping () -> Value) -> Binding<Value> {
        Binding(
            get: getter,
            set: { _ in }
        )
    }
}
