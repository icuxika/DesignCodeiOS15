//
//  Styles.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/13.
//

import SwiftUI

struct StrokeStyle: ViewModifier {
    
    var cornerRadius: CGFloat
    
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(
                    .linearGradient(
                        colors: [
                            .white.opacity(colorScheme == .dark ? 0.1 : 0.3),
                            .black.opacity(colorScheme == .dark ? 0.3 : 0.1)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .blendMode(.overlay)
        )
    }
}

extension View {
    func strokeStyle(cornerRadius: CGFloat = 24) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
