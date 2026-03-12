//
//  FacilitiesView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct FacilitiesView: View {
    @EnvironmentObject private var data: AppData

    var body: some View {
        List {
            ForEach(data.facilities) { facility in
                NavigationLink(value: facility) {
                    HStack(spacing: 12) {
                        Image(facility.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 56, height: 56)
                            .clipShape(RoundedRectangle(cornerRadius: 12))

                        VStack(alignment: .leading) {
                            Text(facility.name).font(.headline)
                            Text(facility.location)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .navigationTitle("Facilities")
        .navigationDestination(for: Facility.self) { facility in
            FacilityDetailView(facility: facility)
        }
    }
}

#Preview {
    NavigationStack { FacilitiesView() }
        .environmentObject(AppData())
}
