import SwiftUI

private struct OnboardingSlide {
    let emoji: String
    let title: String
    let body: String
}

private let slides: [OnboardingSlide] = [
    OnboardingSlide(
        emoji: "🌍",
        title: "Welcome to Remindo",
        body: "Your new holiday reminder app — never miss a meaningful day, anywhere in the world."
    ),
    OnboardingSlide(
        emoji: "📅",
        title: "Every Holiday, Every Culture",
        body: "Country holidays, international observances, religious holidays, cultural celebrations, and more — all in one place."
    ),
    OnboardingSlide(
        emoji: "⭐",
        title: "Tailored to You",
        body: "Save your favorite countries, toggle categories in Settings, and get notified exactly when you want."
    ),
]

struct OnboardingSlidesView: View {

    var onFinish: () -> Void

    @State private var currentIndex = 0

    var body: some View {
        VStack(spacing: 0) {

            // Slides
            TabView(selection: $currentIndex) {
                ForEach(slides.indices, id: \.self) { i in
                    slideCard(slides[i])
                        .tag(i)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentIndex)

            // Dot indicator
            HStack(spacing: 6) {
                ForEach(slides.indices, id: \.self) { i in
                    Capsule()
                        .fill(i == currentIndex
                              ? Color(hex: "FFB6C1")
                              : .white.opacity(0.25))
                        .frame(width: i == currentIndex ? 20 : 8, height: 8)
                        .animation(.spring(response: 0.3), value: currentIndex)
                }
            }
            .padding(.bottom, 28)

            // Navigation buttons
            HStack(spacing: 12) {
                if currentIndex > 0 {
                    Button {
                        withAnimation { currentIndex -= 1 }
                    } label: {
                        Text("Back")
                            .font(.subheadline)
                            .foregroundStyle(.white.opacity(0.6))
                            .padding(.vertical, 14)
                            .padding(.horizontal, 22)
                            .background(.white.opacity(0.07))
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(.white.opacity(0.1), lineWidth: 1)
                            )
                    }
                }

                Spacer()

                Button {
                    if currentIndex < slides.count - 1 {
                        withAnimation { currentIndex += 1 }
                    } else {
                        onFinish()
                    }
                } label: {
                    Text(currentIndex == slides.count - 1 ? "Get Started →" : "Next →")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 28)
                        .background(
                            LinearGradient(
                                colors: [Color(hex: "FFB6C1"), Color(hex: "FF8FA3")],
                                startPoint: .leading, endPoint: .trailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
    }

    @ViewBuilder
    private func slideCard(_ slide: OnboardingSlide) -> some View {
        VStack(spacing: 24) {
            Spacer()

            Text(slide.emoji)
                .font(.system(size: 90))
                .shadow(color: Color(hex: "FFB6C1").opacity(0.4), radius: 24)

            Text(slide.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)

            Text(slide.body)
                .font(.body)
                .foregroundStyle(.white.opacity(0.6))
                .multilineTextAlignment(.center)
                .lineSpacing(5)
                .padding(.horizontal, 12)

            Spacer()
        }
        .padding(.horizontal, 32)
    }
}
