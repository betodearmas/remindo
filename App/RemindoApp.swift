import SwiftUI
import UserNotifications

@main
struct RemindoApp: App {
    
    @StateObject private var savedStore = SavedCountryStore()
    
    init() {
        
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert, .badge, .sound]
        ) { granted, error in
            if let error = error {
                print("Notification permission error:", error)
            } else {
                print("Notifications permission granted:", granted)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
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
        }
    }
}
