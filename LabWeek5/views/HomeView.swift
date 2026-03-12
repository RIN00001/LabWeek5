//
//  HomeView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var data: AppData

    var body: some View {
        ScrollView {

            VStack(alignment: .leading, spacing: 18) {
                Text("Home")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)

                VStack(spacing: 6) {
                    Text("Campus Guide")
                        .font(.title)
                        .fontWeight(.bold)

                    Text("Explore facilities and track your courses.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)

                HStack(spacing: 12) {
                    _TakenCoursesCard(count: data.takenCoursesCount)
                    _FacilitiesCard(count: data.facilities.count)
                }
                .padding(.horizontal)

                if let featured = data.featuredCourse {
                    _FeaturedCourseCard(course: featured)
                        .padding(.horizontal)
                }
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}




#Preview {
    NavigationStack {
        HomeView()
            .environmentObject(AppData())
    }
}

