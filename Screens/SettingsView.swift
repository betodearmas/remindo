
import SwiftUI

struct SettingsView: View {
    
    @AppStorage("holidayNotificationEnabled") private var notificationsEnabled = true
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Notifications")) {
                    Toggle("Enable Holiday Notifications", isOn: $notificationsEnabled)
                    // We can add more toggles later for type (banner, sound, etc.)
                }
            }
            .navigationTitle("Settings")
        }
    }
}
