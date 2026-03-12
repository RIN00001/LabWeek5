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
            VStack(alignment: .leading, spacing: 14) {
                Text("Campus Guide")
                    .font(.largeTitle).bold()
                    .frame(maxWidth: .infinity, alignment: .center)

                Text("Explore facilities and track your courses.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .center)

                HStack(spacing: 12) {
                    _TakenCoursesCard(count: data.takenCoursesCount)
                    FacilitiesCountCard(count: data.facilities.count)
                }

                if let featured = data.featuredCourse {
                    _FeaturedCourseCard(course: featured)
                }
            }
            .padding()
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct FacilitiesCountCard: View {
    let count: Int

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "building.2.fill")
                .font(.system(size: 28))
                .foregroundStyle(.white)

            Text("\(count)")
                .font(.title2.bold())
                .foregroundStyle(.white)

            Text("Facilities")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 18)
        .background(Color.green)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    NavigationStack { HomeView() }
        .environmentObject(AppData())
}
