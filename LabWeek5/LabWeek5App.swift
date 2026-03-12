//
//  LabWeek5App.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

@main
struct LabWeek5App: App {
    @StateObject private var data = AppData()

    var body: some Scene {
        WindowGroup {
            MainTab()
                .environmentObject(data)
        }
    }
}
