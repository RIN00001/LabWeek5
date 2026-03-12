//
//  CourseDetailView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct CourseDetailView: View {
    @Binding var course: Course
    @State private var showMoreInfo = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(spacing: 12) {
                Text(course.name)
                    .font(.title2).bold()
                Image(systemName: course.lecturerImageSystemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 72, height: 72)
                    .foregroundStyle(.purple)
                    .padding(8)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(Circle())
                Text(course.lecturerName)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                HStack(spacing: 6) {
                    Text("Credits")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("\(course.credits)")
                        .font(.headline)
                }
            }
            .frame(maxWidth: .infinity)
            .padding()

            Button("View Information") { showMoreInfo = true }
                .buttonStyle(.borderedProminent)
                .frame(maxWidth: .infinity)

            Spacer()
        }
        .padding()
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showMoreInfo) {
            CourseMoreInfoView(course: $course)
                .presentationDetents([.medium, .large])
        }
    }
}

#Preview {
    NavigationStack {
        CourseDetailView(course: .constant(AppData().courses[0]))
    }
}
