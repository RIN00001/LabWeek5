//
//  CourseDetailView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI
import UIKit

struct CourseDetailView: View {
    @Binding var course: Course
    @State private var showMoreInfo = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(course.name)
                .font(.title2.bold())

            HStack {
                Text(course.status.rawValue)
                    .font(.caption.bold())
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(course.status.color.opacity(0.2))
                    .foregroundStyle(course.status.color)
                    .clipShape(Capsule())
                    .animation(.easeInOut(duration: 0.2), value: course.status)
                Spacer()
            }

            VStack(spacing: 8) {
                lecturerImage

                Text(course.lecturerName)
                    .font(.headline)
                Text("Lecturer")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 2)

            HStack {
                Text("Credits")
                    .font(.subheadline.bold())
                Spacer()
                Text("\(course.credits)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 10))

            Button("More Information") {
                showMoreInfo = true
            }
            .font(.footnote.weight(.semibold))
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .frame(maxWidth: .infinity)

            Spacer()
        }
        .padding()
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showMoreInfo) {
            CourseMoreInfoView(course: $course)
                .presentationDetents([.large])
        }
    }

    @ViewBuilder
    private var lecturerImage: some View {
        if UIImage(named: course.lecturerImageName) != nil {
            Image(course.lecturerImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 88, height: 88)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 88, height: 88)
                .foregroundStyle(.purple)
        }
    }
}

#Preview {
    NavigationStack {
        CourseDetailView(course: .constant(AppData().courses[0]))
    }
}
