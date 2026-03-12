//
//  _FeaturedCourseCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI
struct _FeaturedCourseCard: View {
    let course: Course

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Featured Course")
                .font(.caption)
                .foregroundStyle(.secondary)
            Text(course.name)
                .font(.headline)
            Text(course.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    _FeaturedCourseCard(course: AppData().featuredCourse!)
}

