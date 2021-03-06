//
//  CertificateView.swift
//  DesignCodeiOS15
//
//  Created by 🌱🌱 🌱 on 2022/7/23.
//

import SwiftUI

struct CertificateView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Swift UI for iOS 15")
                    .font(.title3.weight(.semibold))
                Text("Certificate")
                    .font(.subheadline.weight(.medium))
                    .foregroundColor(.secondary)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 8) {
                Text("Feb 25, 2022".uppercased())
                    .font(.footnote.weight(.semibold))
                Text("DesignCode instructor: Meng To")
                    .font(.footnote.weight(.medium))
            }
            .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 24.0, height: 24.0)
                .cornerRadius(10)
                .padding(8)
                .background(Color(UIColor.systemBackground).opacity(0.1), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        )
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
    }
}

struct CertificateView_Previews: PreviewProvider {
    static var previews: some View {
        CertificateView()
    }
}
