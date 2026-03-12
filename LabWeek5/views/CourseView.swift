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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Courses")
                    .font(.largeTitle.bold())

                VStack(spacing: 12) {
                    ForEach(viewModel.courses) { course in
                        NavigationLink(value: course.id) {
                            _CourseListCard(course: course)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding()
        }
        .navigationDestination(for: Course.ID.self) { courseID in
            CourseDetailView(course: binding(for: courseID))
        }
        .onAppear {
            if viewModel.courses.isEmpty {
                viewModel.setCourses(data.courses)
            }
        }
        .onChange(of: viewModel.courses) { updatedCourses in
            data.courses = updatedCourses
        }
    }

    private func binding(for courseID: Course.ID) -> Binding<Course> {
        guard let index = viewModel.index(for: courseID) else {
            fatalError("Course with id \(courseID) not found")
        }
        return $viewModel.courses[index]
    }
}

#Preview {
    NavigationStack {
        CourseView()
            .environmentObject(AppData())
    }
}
