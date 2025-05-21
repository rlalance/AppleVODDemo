import SwiftUI

// Inside MainAppView.swift
struct MainAppView: View {
    @State private var selectedTab: Tab = .home // Enum for tabs

    enum Tab {
        case home, search, profile
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(Tab.home)

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
        }
    }
}
