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
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Campus Guide")
                        .font(.largeTitle).bold()
                    Text("Explore facilities and track your courses.")
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)
                
 
                VStack(spacing: 12) {
                    HStack(spacing: 12) {
                        _TakenCoursesCard(count: data.takenCoursesCount)
                        FacilitiesCountCard(count: data.facilities.count)
                    }
                    .padding(.horizontal)

                    if let featured = data.featuredCourse {
                        _FeaturedCourseCard(course: featured)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct FacilitiesCountCard: View {
    let count: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(systemName: "building.2.fill")
                .font(.system(size: 28))
                .foregroundStyle(.white)
                .padding(8)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text("Facilities")
                .font(.headline)
            Text("\(count) listed")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    NavigationStack { HomeView() }
        .environmentObject(AppData())
}
