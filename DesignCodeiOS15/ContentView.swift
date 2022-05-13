//
//  ContentView.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 24.0, height: 24.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/24.0/*@END_MENU_TOKEN@*/)
                .padding(8)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                .strokeStyle()
            Text("SwiftUI for iOS 15")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 16.0)
        .padding(.vertical, 24)
        .frame(height: 360.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        //        .cornerRadius(/*@START_MENU_TOKEN@*/32.0/*@END_MENU_TOKEN@*/)
        .mask(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 8, x: 0, y: 8)
        //        .modifier(StrokeStyle())
        .strokeStyle()
        .padding(.horizontal, 24)
        .background(Image("Blob 1").offset(x: 240, y: -100))
        .overlay(
            Image("Illustration 5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .offset(x: 32, y: -104)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
