//
//  _CourseListCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct _CourseListCard: View {
    let course: Course

    var body: some View {
        HStack(spacing: 12) {
            Image(course.lecturerImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 42, height: 42)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 3) {
                Text(course.name)
                    .font(.headline)
                Text(course.lecturerName)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Text(course.status.rawValue)
                .font(.caption2.weight(.semibold))
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(course.status.color.opacity(0.2))
                .foregroundStyle(course.status.color)
                .clipShape(Capsule())
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    _CourseListCard(course: AppData().courses[0])
}
