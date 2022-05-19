//
//  DesignCodeiOS15App.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/12.
//

import SwiftUI

@main
struct DesignCodeiOS15App: App {
    
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
