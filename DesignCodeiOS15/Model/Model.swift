//
//  Model.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/19.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signIn
}

enum Modal: String {
case signUp
case signIn
}
