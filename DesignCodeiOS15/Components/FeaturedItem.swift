//
//  FeaturedItem.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/5/17.
//

import SwiftUI

struct FeaturedItem: View {
    
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image(course.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 24.0, height: 24.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/24.0/*@END_MENU_TOKEN@*/)
                .padding(8)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
                .strokeStyle()
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text(course.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text(course.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 16.0)
        .padding(.vertical, 24)
        .frame(height: 360.0)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 24)
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
