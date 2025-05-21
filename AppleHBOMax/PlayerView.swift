//
//  PlayerView.swift
//  AppleHBOMax
//
//  Created by designer on 2025-05-21.
//


import SwiftUI
// import AVKit // For AVPlayerViewController if you use it

struct PlayerView: View {
    let movieId: Int? // Will be passed from navigation

    var body: some View {
        VStack {
            Text("Player Screen for Movie ID: \(movieId != nil ? String(movieId!) : "N/A")")
            // Video player will go here
            Spacer()
        }
        .navigationTitle("Now Playing")
        .navigationBarTitleDisplayMode(.inline) // Often good for player screens
    }
}