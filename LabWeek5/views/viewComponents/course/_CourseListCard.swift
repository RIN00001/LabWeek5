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
        HStack(spacing: 12) {
            lecturerImage

            VStack(alignment: .leading, spacing: 4) {
                Text(course.name)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.primary)

                HStack(spacing: 6) {
                    Text(course.lecturerName)
                    Text("•")
                    Text("\(course.credits) credits")
                }
                .font(.title3)
                .foregroundStyle(.secondary)
            }

            Spacer(minLength: 8)

            Text(course.status.rawValue)
                .font(.title3)
                .padding(.horizontal, 14)
                .padding(.vertical, 7)
                .background(course.status.color.opacity(0.18))
                .foregroundStyle(course.status.color)
                .clipShape(Capsule())

            Image(systemName: "chevron.right")
                .font(.headline)
                .foregroundStyle(Color(.systemGray3))
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 14)
    }

    @ViewBuilder
    private var lecturerImage: some View {
        if UIImage(named: course.lecturerImageName) != nil {
            Image(course.lecturerImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 54, height: 54)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 54, height: 54)
                .foregroundStyle(.purple)
        }
    }
}

#Preview {
    _CourseListCard(course: AppData().courses[0])
}
