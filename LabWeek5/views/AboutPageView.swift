//
//  AboutPageView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct AboutPageView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "info.circle.fill")
                .font(.system(size: 48))
                .foregroundStyle(.blue)
                .padding(.top, 24)

            Text("Campus Guide App")
                .font(.title2).bold()

            VStack(spacing: 4) {
                Text("Mobile Application Development")
                Text("Rifki Indra Nugroho")
                Text("NIM: 0706012410033")
                Text("Exercise Week 5 - Navigation Pt.2")
                Text("Built using SwiftUI with MVVM architecture.")
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)

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
