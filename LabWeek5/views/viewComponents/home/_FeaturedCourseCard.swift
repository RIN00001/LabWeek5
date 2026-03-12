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
                .font(.headline)
                .fontWeight(.semibold)

            Text(course.name)
                .font(.headline)
                .foregroundStyle(.primary)

            Text(course.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    _FeaturedCourseCard(course: AppData().featuredCourse!)
}
