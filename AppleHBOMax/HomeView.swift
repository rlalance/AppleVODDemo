//
//  HomeView.swift
//  AppleHBOMax
//
//  Created by designer on 2025-05-21.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack { // Each tab can have its own NavigationStack
            VStack {
                Text("Home Screen (Movie Grid)")
                // Example navigation to a detail screen (conceptual)
                NavigationLink("Go to Movie Detail (Example)", destination: PlayerView(movieId: 123))
            }
            .navigationTitle("Movies")
        }
    }
}