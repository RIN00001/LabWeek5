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
        ZStack {
            Color(.systemGray6).ignoresSafeArea()

            VStack(spacing: 0) {
                VStack(spacing: 14) {
                    Text(course.name)
                        .font(.largeTitle.weight(.medium))
                        .multilineTextAlignment(.center)

                    Text(course.description)
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Text("Current Status: \(course.status.rawValue)")
                        .font(.title3.weight(.semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Divider()
                        .padding(.top, 6)

                    Text("Update Status")
                        .font(.title2)
                        .padding(.top, 4)

                    Button("Mark as In Progress") { updateStatus(.inProgress) }
                        .buttonStyle(.borderless)
                    Button("Mark as Completed") { updateStatus(.completed) }
                        .buttonStyle(.borderless)
                    Button("Mark as Upcoming") { updateStatus(.upcoming) }
                        .buttonStyle(.borderless)
                }
                .padding(28)
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
                .padding(.horizontal, 18)
                .padding(.top, 12)

                Spacer()
            }
        }
    }

    private func updateStatus(_ status: CourseStatus) {
        course.status = status
        dismiss()
    }
}

#Preview {
    CourseMoreInfoView(course: .constant(AppData().courses[0]))
}
