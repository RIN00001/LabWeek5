//
//  _TakenCoursesCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI
struct _TakenCoursesCard: View {
    let count: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 28))
                .foregroundStyle(.white)
                .padding(8)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text("Courses Taken")
                .font(.headline)
            Text("\(count) courses")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    _TakenCoursesCard(count: 2)
}

