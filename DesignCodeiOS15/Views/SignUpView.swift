//
//  SignUpView.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/6/5.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Sign up")
                .font(.largeTitle).bold()
            Text("Access 120+ hours of courses, tutorials and livestreams")
                .font(.headline)
            Button {} label: {
                Text("Create a account")
                    .frame(maxWidth: .infinity)
            }
            .font(.headline)
            .blendMode(.overlay)
            .buttonStyle(.angular)
            .tint(.accentColor)
            .controlSize(.large)
        }
        .padding(24)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 32, style: .continuous))
        .strokeStyle(cornerRadius: 32)
        .shadow(color: Color("Shadow").opacity(0.2), radius: 32, x: 0, y: 32)
        .padding(24)
        .background(
            Image("Blob 1").offset(x: 200 , y: -100)
        )
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
