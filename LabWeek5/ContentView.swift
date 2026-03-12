//
//  ContentView.swift
//  LabWeek5
//
//  Created by student on 12/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainTab()
    }
}

#Preview {
    ContentView()
        .environmentObject(AppData())
}
