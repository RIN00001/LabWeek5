//
//  _CourseListCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI
import UIKit

struct _CourseListCard: View {
    let course: Course

    var body: some View {
        HStack(spacing: 10) {
            lecturerImage

            VStack(alignment: .leading, spacing: 2) {
                Text(course.name)
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(.primary)
                    .lineLimit(2)

                Text(course.lecturerName)
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text("\(course.credits) credits")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer(minLength: 6)

            Text(course.status.rawValue)
                .font(.caption2.weight(.semibold))
                .foregroundStyle(.white)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(course.status.color)
                .clipShape(Capsule())

            Image(systemName: "chevron.right")
                .font(.caption.weight(.semibold))
                .foregroundStyle(Color(.systemGray3))
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
    }

    @ViewBuilder
    private var lecturerImage: some View {
        if UIImage(named: course.lecturerImageName) != nil {
            Image(course.lecturerImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 38, height: 38)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 38, height: 38)
                .foregroundStyle(.purple)
        }
    }
}

#Preview {
    _CourseListCard(course: AppData().courses[0])
}
