//
//  CourseViewModel.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import Foundation

final class CourseViewModel: ObservableObject {
    @Published var courses: [Course]

    init(courses: [Course] = []) {
        self.courses = courses
    }

    func setCourses(_ courses: [Course]) {
        self.courses = courses
    }

    func index(for courseID: Course.ID) -> Int? {
        courses.firstIndex(where: { $0.id == courseID })
    }

    func updateStatus(for courseID: Course.ID, to status: CourseStatus) {
        guard let index = index(for: courseID) else {
            return
        }
        courses[index].status = status
    }
}
