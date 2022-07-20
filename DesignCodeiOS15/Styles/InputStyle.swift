//
//  InputStyle.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/7/20.
//

import SwiftUI

struct InputStyle: ViewModifier {
    
    var icon: String
    
    func body(content: Content) -> some View {
        content
            .padding(16)
            .padding(.leading, 40)
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .strokeStyle(cornerRadius: 20)
            .overlay(
                Image(systemName: icon)
                    .foregroundStyle(.secondary)
                    .frame(width: 36, height: 36)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(8)
            )
    }
}

extension View {
    func inputStyle(icon: String = "mail") -> some View {
        modifier(InputStyle(icon: icon))
    }
}

