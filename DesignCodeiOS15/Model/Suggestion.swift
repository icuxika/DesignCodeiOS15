//
//  Suggestion.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/6/5.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]
