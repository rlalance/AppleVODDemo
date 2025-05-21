//
//  SplashScreenView.swift
//  AppleHBOMax
//
//  Created by designer on 2025-05-21.
//


import SwiftUI

struct SplashScreenView: View {
    @Binding var isActive: Bool // To signal when splash is done

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea() // Or your MaxPurpleDark from theme
            VStack {
                Image("max_logo_placeholder") // Replace with your actual logo asset name
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                Text("Tap to Continue")
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.top)
            }
        }
        .onTapGesture {
            isActive = false // Signal that splash is finished
        }
        // You can add your TMDB image fetching logic here later using a ViewModel
        // For now, just a tap to proceed
    }
}

// Add a placeholder image to your Assets.xcassets named "max_logo_placeholder"
// or use a system image for now: Image(systemName: "play.tv.fill")