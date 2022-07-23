//
//  AvatarView.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/7/23.
//

import SwiftUI

struct AvatarView: View {
    
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        Group {
            if isLogged {
                AsyncImage(url: URL(string: "https://picsum.photos/200"), transaction: Transaction(animation: .easeOut)) { phase in
                    switch phase {
                    case .success(let image):
                        image.resizable()
                            .transition(.scale(scale: 0.5, anchor: .center))
                    case .empty:
                        ProgressView()
                    case .failure(_):
                        Color.gray
                    @unknown default:
                        EmptyView()
                    }
                }
            } else {
                Image("Avatar Default")
                    .resizable()
            }
        }
        .frame(width: 24, height: 24)
        .cornerRadius(16)
        .padding(8)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .strokeStyle(cornerRadius: 16)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(isLogged: true)
    }
}
