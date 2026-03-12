//
//  CourseView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct CourseView: View {
    @EnvironmentObject private var data: AppData
    @StateObject private var viewModel = CourseViewModel()

    var body: some View {
        List {
            ForEach(viewModel.courses) { course in
                NavigationLink(value: course.id) {
                    _CourseListCard(course: course)
                }
            }
        }
        .navigationTitle("Courses")
        .navigationDestination(for: Course.ID.self) { courseID in
            CourseDetailView(course: binding(for: courseID))
        }
        .onAppear {
            if viewModel.courses.isEmpty {
                viewModel.setCourses(data.courses)
            }
        }
        .onChange(of: viewModel.courses) { _, updatedCourses in
            data.courses = updatedCourses
        }
    }

    private func binding(for courseID: Course.ID) -> Binding<Course> {
        guard let index = viewModel.index(for: courseID) else {
            return .constant(
                Course(
                    id: courseID,
                    name: "Unknown Course",
                    description: "Course data is unavailable.",
                    lecturerName: "Unknown Lecturer",
                    lecturerImageSystemName: "person.circle.fill",
                    credits: 0,
                    status: .upcoming
                )
            )
        }

        return $viewModel.courses[index]
    }
}

#Preview {
    NavigationStack { CourseView() }
        .environmentObject(AppData())
}
