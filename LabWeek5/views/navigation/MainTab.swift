//
//  MainTab.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI
struct MainTab: View {
    var body: some View {
        TabView {
            NavigationStack { HomeView() }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            NavigationStack { FacilitiesView() }
                .tabItem {
                    Label("Facilities", systemImage: "building.2.fill")
                }

            NavigationStack { CourseView() }
                .tabItem {
                    Label("Courses", systemImage: "book.closed.fill")
                }

            NavigationStack { AboutPageView() }
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
    }
}

#Preview {
    MainTab()
        .environmentObject(AppData())
}

