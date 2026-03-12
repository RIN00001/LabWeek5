//
//  AppData.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import Foundation
import SwiftUI
internal import Combine

final class AppData: ObservableObject {
    @Published var courses: [Course]
    @Published var facilities: [Facility]

    init() {
        self.courses = [
            Course(name: "Mobile Application Development", description: "Learn to build iOS applications using Swift and SwiftUI.", lecturerName: "Dr. Irene", lecturerImageSystemName: "person.circle.fill", credits: 3, status: .inProgress, isFeatured: true),
            Course(name: "Data Structures", description: "Core data structures and algorithms.", lecturerName: "Prof. Alan", lecturerImageSystemName: "person.circle.fill", credits: 4, status: .upcoming),
            Course(name: "Visual Programming", description: "UIKit, SwiftUI, and design patterns.", lecturerName: "Ms. Diane", lecturerImageSystemName: "person.circle.fill", credits: 2, status: .completed)
        ]

        self.facilities = [
            Facility(name: "Library", imageName: "books.vertical.fill", description: "Quiet study spaces with books and journals.", location: "Old Building, Floor 2"),
            Facility(name: "Computer Lab", imageName: "desktopcomputer", description: "Modern lab with up-to-date machines.", location: "New Building, Floor 3"),
            Facility(name: "Student Center", imageName: "person.3.sequence.fill", description: "Hangout area, cafeteria, and services.", location: "Main Hall, Floor 1")
        ]
    }

    var takenCoursesCount: Int {
        courses.filter { $0.status == .inProgress || $0.status == .completed }.count
    }

    var featuredCourse: Course? {
        courses.first(where: { $0.isFeatured })
    }
}
