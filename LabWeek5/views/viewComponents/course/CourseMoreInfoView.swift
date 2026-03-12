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
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                Text(course.description)
                    .font(.body)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Current Status: \(course.status.rawValue)")
                        .font(.subheadline)
                        .padding(.vertical, 8)

                    Text("Update Status")
                        .font(.headline)
                        .padding(.top, 4)

                    Button("Mark as In Progress") { course.status = .inProgress }
                        .buttonStyle(.borderless)
                    Button("Mark as Completed") { course.status = .completed }
                        .buttonStyle(.borderless)
                    Button("Mark as Upcoming") { course.status = .upcoming }
                        .buttonStyle(.borderless)
                }

                Spacer()

                Button("Close") { dismiss() }
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .navigationTitle("More Information")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CourseMoreInfoView(course: .constant(AppData().courses[0]))
}
