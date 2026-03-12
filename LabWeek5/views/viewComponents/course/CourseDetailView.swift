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
            Text(course.name)
                .font(.title2).bold()

            HStack {
                Text(course.status.rawValue)
                    .font(.caption.bold())
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(course.status.color.opacity(0.2))
                    .foregroundStyle(course.status.color)
                    .clipShape(Capsule())
                Spacer()
            }

            VStack(spacing: 10) {
                Image(course.lecturerImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 88, height: 88)
                    .clipShape(Circle())

                Text(course.lecturerName)
                    .font(.headline)
                Text("Lecturer")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)

            HStack {
                Text("Credits")
                    .font(.subheadline.weight(.semibold))
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
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity, alignment: .center)

            Spacer()
        }
        .padding()
        .navigationTitle("Course Detail")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showMoreInfo) {
            CourseMoreInfoView(course: $course)
                .presentationDetents([.fraction(0.6), .large])
        }
    }
}

#Preview {
    NavigationStack {
        CourseDetailView(course: .constant(AppData().courses[0]))
    }
}
