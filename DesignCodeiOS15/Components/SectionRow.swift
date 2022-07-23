//
//  SectionRow.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/7/23.
//

import SwiftUI

struct SectionRow: View {
    
    var section: CourseSection = courseSections[0]
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(section.logo)
                .resizable()
                .frame(width: 36, height: 36)
                .mask(Circle())
                .padding(12)
                .background(Color(UIColor.systemBackground).opacity(0.3))
                .mask(Circle())
                .overlay(CircularView(value: section.progress))
            VStack {
                Text(section.subtitle)
                    .font(.caption.weight(.medium))
                    .foregroundColor(.secondary)
                Text(section.title)
                    .fontWeight(.semibold)
                Text(section.text)
                    .font(.caption.weight(.medium))
                    .foregroundColor(.secondary)
                ProgressView(value: section.progress)
                    .accentColor(.white)
                    .frame(maxWidth: 132)
            }
        }
        .padding(20)
    }
}

struct SectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SectionRow()
    }
}
