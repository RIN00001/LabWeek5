//
//  CourseMoreInfoView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct CourseMoreInfoView: View {
    @Binding var course: Course
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 24) {
                Text(course.name)
                    .font(.largeTitle.weight(.medium))
                    .multilineTextAlignment(.center)

                Text(course.description)
                    .font(.title3)
                    .foregroundStyle(.primary)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Current Status: \(course.status.rawValue)")
                    .font(.title3.weight(.semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)

                Divider()

                VStack(spacing: 16) {
                    Text("Update Status")
                        .font(.title3)

                    Button("Mark as In Progress") { course.status = .inProgress }
                    Button("Mark as Completed") { course.status = .completed }
                    Button("Mark as Upcoming") { course.status = .upcoming }
                }
                .font(.title3)

                Divider()

                Button("Close") { dismiss() }
                    .font(.title3)
                    .padding(.top, 4)
            }
            .padding(28)
            .frame(maxWidth: .infinity, alignment: .top)
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
            .padding()

            Spacer(minLength: 0)
        }
        .background(Color(.systemGray6).ignoresSafeArea())
    }
}

#Preview {
    CourseMoreInfoView(course: .constant(AppData().courses[0]))
}
