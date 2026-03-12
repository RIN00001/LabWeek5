//
//  CourseView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct CourseView: View {
    @EnvironmentObject private var data: AppData

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                Text("Courses")
                    .font(.largeTitle.bold())

                VStack(spacing: 0) {
                    ForEach(Array(data.courses.enumerated()), id: \.element.id) { index, course in
                        NavigationLink(value: course) {
                            _CourseListCard(course: course)
                        }
                        .buttonStyle(.plain)

                        if index < data.courses.count - 1 {
                            Divider()
                                .padding(.leading, 82)
                        }
                    }
                }
                .padding(.vertical, 8)
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
            }
            .padding()
        }
        .background(Color(.systemGray6))
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: Course.self) { course in
            CourseDetailView(course: binding(for: course))
        }
    }

    private func binding(for course: Course) -> Binding<Course> {
        guard let index = data.courses.firstIndex(of: course) else {
            return .constant(course)
        }
        return $data.courses[index]
    }
}

#Preview {
    NavigationStack { CourseView() }
        .environmentObject(AppData())
}
