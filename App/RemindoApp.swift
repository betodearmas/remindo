import SwiftUI
import UserNotifications

@main
struct RemindoApp: App {

    @StateObject private var savedStore = SavedCountryStore()
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false

    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                // ── Your existing app ──────────────────────────────
                TabView {
                    NavigationStack {
                        CountryListView()
                    }
                    .tabItem {
                        Label("Countries", systemImage: "globe")
                    }

                    SavedCountryView()
                        .tabItem {
                            Label("Saved", systemImage: "bookmark")
                        }
                }
                .environmentObject(savedStore)
                // ──────────────────────────────────────────────────
            } else {
                OnboardingView()
                    .environmentObject(savedStore)
            }
        }
    }
}

