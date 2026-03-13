import SwiftUI

/// Controls which onboarding stage is currently visible.
enum OnboardingStage {
    case notification
    case slides
    case countryPicker
}

struct OnboardingView: View {

    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @EnvironmentObject private var savedStore: SavedCountryStore
    @State private var stage: OnboardingStage = .notification

    var body: some View {
        ZStack {
            // Background — deep night gradient matching the app's palette
            LinearGradient(
                colors: [Color(hex: "1f1520"), Color(hex: "120d14"), .black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            switch stage {
            case .notification:
                NotificationPermissionView {
                    stage = .slides
                }
                .transition(.opacity)

            case .slides:
                OnboardingSlidesView {
                    stage = .countryPicker
                }
                .transition(.opacity)

            case .countryPicker:
                CountryPickerOnboardingView {
                    hasCompletedOnboarding = true   // unlocks the TabView
                }
                .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.35), value: stage)
    }
}
