//
//  _TakenCoursesCard.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct _TakenCoursesCard: View {
    let count: Int

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "book.fill")
                .font(.system(size: 28))
                .foregroundStyle(.white)

            Text("\(count)")
                .font(.title2.bold())
                .foregroundStyle(.white)

            Text("Courses")
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 18)
        .background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    _TakenCoursesCard(count: 3)
}
