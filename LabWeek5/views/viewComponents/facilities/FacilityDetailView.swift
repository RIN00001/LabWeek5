//
//  FacilityDetailView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct FacilityDetailView: View {
    let facility: Facility

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(facility.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))

                VStack(alignment: .leading, spacing: 8) {
                    Text(facility.name)
                        .font(.title2).bold()
                    Text("Location: \(facility.location)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(facility.description)
                        .font(.body)
                        .padding(.top, 8)
                }
            }
            .padding()
        }
        .navigationTitle("Facility Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FacilityDetailView(
        facility: Facility(name: "Library", imageName: "Library", description: "Quiet study space with books and journals.", location: "Old Building, Floor 2")
    )
}
