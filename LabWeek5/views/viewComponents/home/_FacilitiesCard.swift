//
//  _FacilitiesCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct _FacilitiesCard: View {
    let count: Int

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "building.2.fill")
                .font(.system(size: 24, weight: .medium))
                .foregroundStyle(.white)

            Text("\(count)")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)

            Text("Facilities")
                .font(.caption)
                .foregroundStyle(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 110)
        .background(Color.green)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
 _FacilitiesCard(count: 3)
}
