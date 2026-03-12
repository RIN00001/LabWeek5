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
            Image(systemName: course.lecturerImageSystemName)
                .font(.system(size: 28))
                .foregroundStyle(.purple)
                .frame(width: 36)

            VStack(alignment: .leading, spacing: 2) {
                Text(course.name)
                    .font(.headline)
                HStack(spacing: 6) {
                    Text(course.lecturerName)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("•")
                        .foregroundStyle(.secondary)
                    Text("\(course.credits) credits")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
            Text(course.status.rawValue)
                .font(.caption2)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(course.status.color.opacity(0.15))
                .foregroundStyle(course.status.color)
                .clipShape(Capsule())
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    _CourseListCard(course: AppData().courses[0])
}
