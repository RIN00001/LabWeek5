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
        List {
            ForEach(data.courses) { course in
                NavigationLink(value: course) {
                    _CourseListCard(course: course)
                }
            }
        }
        .navigationTitle("Courses")
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

