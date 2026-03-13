import SwiftUI
import UserNotifications

struct NotificationPermissionView: View {

    var onContinue: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            Spacer()

            VStack(spacing: 16) {

                // App icon
                Text("🗓️")
                    .font(.system(size: 64))
                    .shadow(color: Color(hex: "FFB6C1").opacity(0.5), radius: 20)

                Text("REMINDO")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .kerning(3)
                    .foregroundStyle(.white.opacity(0.5))

                Text("Allow Notifications")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text("Remindo would like to send you holiday reminders and alerts for the countries and categories you care about.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.6))
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .padding(.horizontal, 8)
            }
            .padding(28)
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .fill(.ultraThinMaterial)
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(.white.opacity(0.12), lineWidth: 1)
                    )
            )
            .padding(.horizontal, 24)

            Spacer()

            // Buttons
            VStack(spacing: 10) {
                Button {
                    requestNotifications()
                } label: {
                    Text("Allow")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(
                            LinearGradient(
                                colors: [Color(hex: "FFB6C1"), Color(hex: "FF8FA3")],
                                startPoint: .leading, endPoint: .trailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }

                Button {
                    onContinue()
                } label: {
                    Text("Don't Allow")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.5))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 15)
                        .background(.white.opacity(0.07))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.white.opacity(0.1), lineWidth: 1)
                        )
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
    }

    private func requestNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert, .badge, .sound]
        ) { granted, error in
            if let error = error {
                print("Notification permission error:", error)
            }
            DispatchQueue.main.async {
                onContinue()
            }
        }
    }
}
