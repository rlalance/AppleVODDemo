//
//  SearchView.swift
//  AppleHBOMax
//
//  Created by designer on 2025-05-21.
//


import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Search movies...", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Text("Search Results for: \(searchText)")
                Spacer()
            }
            .navigationTitle("Search")
        }
    }
}