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
            VStack(alignment: .leading, spacing: 16) {
                Text("Courses")
                    .font(.largeTitle.bold())

                VStack(spacing: 12) {
                    ForEach(data.courses) { course in
                        NavigationLink(value: course) {
                            _CourseListCard(course: course)
                        }
                        .buttonStyle(.plain)
                    }
                }
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
