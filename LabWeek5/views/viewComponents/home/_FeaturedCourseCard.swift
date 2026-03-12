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
            Text(course.name)
                .font(.title3.bold())
            Text(course.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    _FeaturedCourseCard(course: AppData().featuredCourse!)
}
