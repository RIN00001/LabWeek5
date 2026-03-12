//
//  AboutPageView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct AboutPageView: View {
    var body: some View {
        VStack(spacing: 14) {
            Image(systemName: "info.circle.fill")
                .font(.system(size: 52))
                .foregroundStyle(.blue)
                .padding(.top, 28)

            Text("Campus Guide App")
                .font(.title2.bold())

            Text("Mobile Application Development")
                .foregroundStyle(.secondary)
            Text("Rifki Indra Nugroho")
                .foregroundStyle(.secondary)
            Text("NIM: 0706012410033")
                .foregroundStyle(.secondary)
            Text("Exercise Week 5 - Navigation Pt.2")
                .foregroundStyle(.secondary)

            Text("Built using SwiftUI with MVVM architecture.")
                .font(.body)
                .padding(.top, 8)

            Spacer()
        }
        .padding()
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack { AboutPageView() }
}
