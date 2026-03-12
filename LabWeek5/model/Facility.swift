//
//  Facility.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import Foundation
struct Facility: Identifiable, Equatable,Hashable {
    let id: UUID
    var name: String
    var imageName: String
    var description: String
    var location: String

    init(id: UUID = UUID(), name: String, imageName: String, description: String, location: String) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.description = description
        self.location = location
    }
}

