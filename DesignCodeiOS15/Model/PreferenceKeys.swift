//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/17.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
