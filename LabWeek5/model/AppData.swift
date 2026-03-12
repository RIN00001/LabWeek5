//
//  AppData.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import Combine
import Foundation

final class AppData: ObservableObject {
    @Published var courses: [Course]
    @Published var facilities: [Facility]

    init() {
        self.courses = [
            Course(
                name: "Mobile Application Development",
                description: "Learn to build iOS applications using Swift and SwiftUI.",
                lecturerName: "Bu. There",
                lecturerImageName: "Theresia",
                credits: 3,
                status: .inProgress,
                isFeatured: true
            ),
            Course(
                name: "Statistics",
                description: "Understand probability, inference, and statistical modelling.",
                lecturerName: "Pak. Christo",
                lecturerImageName: "Christo",
                credits: 3,
                status: .completed
            ),
            Course(
                name: "Visual Programming",
                description: "Build modern interfaces and interactions with visual programming concepts.",
                lecturerName: "Pak. Evan",
                lecturerImageName: "Evan",
                credits: 3,
                status: .upcoming
            )
        ]

        self.facilities = [
            Facility(
                name: "Library",
                imageName: "Library",
                description: "Quiet study spaces with books and journals.",
                location: "Main Building"
            ),
            Facility(
                name: "Computer Lab",
                imageName: "ComputerLab",
                description: "Modern computer lab with up-to-date software and hardware.",
                location: "Technology Center"
            ),
            Facility(
                name: "SIFT Food Technology",
                imageName: "FoodTechnology",
                description: "Hands-on food processing and quality analysis lab.",
                location: "SIFT Building"
            )
        ]
    }

    var takenCoursesCount: Int {
        courses.count
    }

    var featuredCourse: Course? {
        courses.first(where: { $0.isFeatured })
    }
}
