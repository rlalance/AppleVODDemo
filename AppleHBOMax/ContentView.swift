import SwiftUI
import SwiftData

struct ContentView: View {
    // State to control whether the splash screen is active
    @State private var isSplashScreenActive = true

    // Accessing the SwiftData model context (if you need it directly here,
    // often it's used in deeper views)
    // @Environment(\.modelContext) private var modelContext

    var body: some View {
        // Use a ZStack or if/else to switch between Splash and Main content
        if isSplashScreenActive {
            SplashScreenView(isActive: $isSplashScreenActive)
        } else {
            MainAppView() // This will be your main app UI (e.g., TabView)
        }
    }

    // This is the default Item list example from the template,
    // you'll likely remove or heavily modify this part.
    // For now, we'll comment it out as we focus on navigation.
    /*
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
    */
}

// Preview for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            // If your ContentView or its children need the modelContainer for previews:
            // .modelContainer(for: Item.self, inMemory: true)
    }
}
