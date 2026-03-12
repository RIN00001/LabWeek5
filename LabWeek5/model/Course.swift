//
//  Course.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import Foundation
import SwiftUI

enum CourseStatus: String, CaseIterable, Identifiable, Codable, Hashable {
    case upcoming = "Upcoming"
    case inProgress = "In Progress"
    case completed = "Completed"

    var id: String { rawValue }

    var color: Color {
        switch self {
        case .upcoming: return .blue
        case .inProgress: return .orange
        case .completed: return .green
        }
    }
}

struct Course: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var name: String
    var description: String
    var lecturerName: String
    var lecturerImageName: String
    var credits: Int
    var status: CourseStatus
    var isFeatured: Bool

    init(
        id: UUID = UUID(),
        name: String,
        description: String,
        lecturerName: String,
        lecturerImageName: String,
        credits: Int,
        status: CourseStatus,
        isFeatured: Bool = false
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.lecturerName = lecturerName
        self.lecturerImageName = lecturerImageName
        self.credits = credits
        self.status = status
        self.isFeatured = isFeatured
    }
}
