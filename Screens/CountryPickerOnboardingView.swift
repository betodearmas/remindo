import SwiftUI

// All countries list — uses your existing Country model
private let allCountries: [Country] = [
    Country(name: "Afghanistan", isoCode: "AF"),
    Country(name: "Albania", isoCode: "AL"),
    Country(name: "Algeria", isoCode: "DZ"),
    Country(name: "Andorra", isoCode: "AD"),
    Country(name: "Angola", isoCode: "AO"),
    Country(name: "Argentina", isoCode: "AR"),
    Country(name: "Armenia", isoCode: "AM"),
    Country(name: "Australia", isoCode: "AU"),
    Country(name: "Austria", isoCode: "AT"),
    Country(name: "Azerbaijan", isoCode: "AZ"),
    Country(name: "Bahamas", isoCode: "BS"),
    Country(name: "Bahrain", isoCode: "BH"),
    Country(name: "Bangladesh", isoCode: "BD"),
    Country(name: "Barbados", isoCode: "BB"),
    Country(name: "Belarus", isoCode: "BY"),
    Country(name: "Belgium", isoCode: "BE"),
    Country(name: "Belize", isoCode: "BZ"),
    Country(name: "Benin", isoCode: "BJ"),
    Country(name: "Bhutan", isoCode: "BT"),
    Country(name: "Bolivia", isoCode: "BO"),
    Country(name: "Bosnia and Herzegovina", isoCode: "BA"),
    Country(name: "Botswana", isoCode: "BW"),
    Country(name: "Brazil", isoCode: "BR"),
    Country(name: "Brunei", isoCode: "BN"),
    Country(name: "Bulgaria", isoCode: "BG"),
    Country(name: "Burkina Faso", isoCode: "BF"),
    Country(name: "Burundi", isoCode: "BI"),
    Country(name: "Cambodia", isoCode: "KH"),
    Country(name: "Cameroon", isoCode: "CM"),
    Country(name: "Canada", isoCode: "CA"),
    Country(name: "Cape Verde", isoCode: "CV"),
    Country(name: "Central African Republic", isoCode: "CF"),
    Country(name: "Chad", isoCode: "TD"),
    Country(name: "Chile", isoCode: "CL"),
    Country(name: "China", isoCode: "CN"),
    Country(name: "Colombia", isoCode: "CO"),
    Country(name: "Comoros", isoCode: "KM"),
    Country(name: "Congo", isoCode: "CG"),
    Country(name: "Costa Rica", isoCode: "CR"),
    Country(name: "Croatia", isoCode: "HR"),
    Country(name: "Cuba", isoCode: "CU"),
    Country(name: "Cyprus", isoCode: "CY"),
    Country(name: "Czech Republic", isoCode: "CZ"),
    Country(name: "Denmark", isoCode: "DK"),
    Country(name: "Djibouti", isoCode: "DJ"),
    Country(name: "Dominican Republic", isoCode: "DO"),
    Country(name: "Ecuador", isoCode: "EC"),
    Country(name: "Egypt", isoCode: "EG"),
    Country(name: "El Salvador", isoCode: "SV"),
    Country(name: "Equatorial Guinea", isoCode: "GQ"),
    Country(name: "Eritrea", isoCode: "ER"),
    Country(name: "Estonia", isoCode: "EE"),
    Country(name: "Eswatini", isoCode: "SZ"),
    Country(name: "Ethiopia", isoCode: "ET"),
    Country(name: "Fiji", isoCode: "FJ"),
    Country(name: "Finland", isoCode: "FI"),
    Country(name: "France", isoCode: "FR"),
    Country(name: "Gabon", isoCode: "GA"),
    Country(name: "Gambia", isoCode: "GM"),
    Country(name: "Georgia", isoCode: "GE"),
    Country(name: "Germany", isoCode: "DE"),
    Country(name: "Ghana", isoCode: "GH"),
    Country(name: "Greece", isoCode: "GR"),
    Country(name: "Guatemala", isoCode: "GT"),
    Country(name: "Guinea", isoCode: "GN"),
    Country(name: "Guinea-Bissau", isoCode: "GW"),
    Country(name: "Guyana", isoCode: "GY"),
    Country(name: "Haiti", isoCode: "HT"),
    Country(name: "Honduras", isoCode: "HN"),
    Country(name: "Hungary", isoCode: "HU"),
    Country(name: "Iceland", isoCode: "IS"),
    Country(name: "India", isoCode: "IN"),
    Country(name: "Indonesia", isoCode: "ID"),
    Country(name: "Iran", isoCode: "IR"),
    Country(name: "Iraq", isoCode: "IQ"),
    Country(name: "Ireland", isoCode: "IE"),
    Country(name: "Israel", isoCode: "IL"),
    Country(name: "Italy", isoCode: "IT"),
    Country(name: "Ivory Coast", isoCode: "CI"),
    Country(name: "Jamaica", isoCode: "JM"),
    Country(name: "Japan", isoCode: "JP"),
    Country(name: "Jordan", isoCode: "JO"),
    Country(name: "Kazakhstan", isoCode: "KZ"),
    Country(name: "Kenya", isoCode: "KE"),
    Country(name: "Kuwait", isoCode: "KW"),
    Country(name: "Kyrgyzstan", isoCode: "KG"),
    Country(name: "Laos", isoCode: "LA"),
    Country(name: "Latvia", isoCode: "LV"),
    Country(name: "Lebanon", isoCode: "LB"),
    Country(name: "Lesotho", isoCode: "LS"),
    Country(name: "Liberia", isoCode: "LR"),
    Country(name: "Libya", isoCode: "LY"),
    Country(name: "Liechtenstein", isoCode: "LI"),
    Country(name: "Lithuania", isoCode: "LT"),
    Country(name: "Luxembourg", isoCode: "LU"),
    Country(name: "Madagascar", isoCode: "MG"),
    Country(name: "Malawi", isoCode: "MW"),
    Country(name: "Malaysia", isoCode: "MY"),
    Country(name: "Maldives", isoCode: "MV"),
    Country(name: "Mali", isoCode: "ML"),
    Country(name: "Malta", isoCode: "MT"),
    Country(name: "Mauritania", isoCode: "MR"),
    Country(name: "Mauritius", isoCode: "MU"),
    Country(name: "Mexico", isoCode: "MX"),
    Country(name: "Moldova", isoCode: "MD"),
    Country(name: "Monaco", isoCode: "MC"),
    Country(name: "Mongolia", isoCode: "MN"),
    Country(name: "Montenegro", isoCode: "ME"),
    Country(name: "Morocco", isoCode: "MA"),
    Country(name: "Mozambique", isoCode: "MZ"),
    Country(name: "Myanmar", isoCode: "MM"),
    Country(name: "Namibia", isoCode: "NA"),
    Country(name: "Nepal", isoCode: "NP"),
    Country(name: "Netherlands", isoCode: "NL"),
    Country(name: "New Zealand", isoCode: "NZ"),
    Country(name: "Nicaragua", isoCode: "NI"),
    Country(name: "Niger", isoCode: "NE"),
    Country(name: "Nigeria", isoCode: "NG"),
    Country(name: "North Korea", isoCode: "KP"),
    Country(name: "North Macedonia", isoCode: "MK"),
    Country(name: "Norway", isoCode: "NO"),
    Country(name: "Oman", isoCode: "OM"),
    Country(name: "Pakistan", isoCode: "PK"),
    Country(name: "Panama", isoCode: "PA"),
    Country(name: "Papua New Guinea", isoCode: "PG"),
    Country(name: "Paraguay", isoCode: "PY"),
    Country(name: "Peru", isoCode: "PE"),
    Country(name: "Philippines", isoCode: "PH"),
    Country(name: "Poland", isoCode: "PL"),
    Country(name: "Portugal", isoCode: "PT"),
    Country(name: "Qatar", isoCode: "QA"),
    Country(name: "Romania", isoCode: "RO"),
    Country(name: "Russia", isoCode: "RU"),
    Country(name: "Rwanda", isoCode: "RW"),
    Country(name: "Saint Lucia", isoCode: "LC"),
    Country(name: "Samoa", isoCode: "WS"),
    Country(name: "San Marino", isoCode: "SM"),
    Country(name: "Saudi Arabia", isoCode: "SA"),
    Country(name: "Senegal", isoCode: "SN"),
    Country(name: "Serbia", isoCode: "RS"),
    Country(name: "Sierra Leone", isoCode: "SL"),
    Country(name: "Singapore", isoCode: "SG"),
    Country(name: "Slovakia", isoCode: "SK"),
    Country(name: "Slovenia", isoCode: "SI"),
    Country(name: "South Africa", isoCode: "ZA"),
    Country(name: "South Korea", isoCode: "KR"),
    Country(name: "South Sudan", isoCode: "SS"),
    Country(name: "Spain", isoCode: "ES"),
    Country(name: "Sri Lanka", isoCode: "LK"),
    Country(name: "Sudan", isoCode: "SD"),
    Country(name: "Suriname", isoCode: "SR"),
    Country(name: "Sweden", isoCode: "SE"),
    Country(name: "Switzerland", isoCode: "CH"),
    Country(name: "Syria", isoCode: "SY"),
    Country(name: "Taiwan", isoCode: "TW"),
    Country(name: "Tajikistan", isoCode: "TJ"),
    Country(name: "Tanzania", isoCode: "TZ"),
    Country(name: "Thailand", isoCode: "TH"),
    Country(name: "Togo", isoCode: "TG"),
    Country(name: "Trinidad and Tobago", isoCode: "TT"),
    Country(name: "Tunisia", isoCode: "TN"),
    Country(name: "Turkey", isoCode: "TR"),
    Country(name: "Turkmenistan", isoCode: "TM"),
    Country(name: "Uganda", isoCode: "UG"),
    Country(name: "Ukraine", isoCode: "UA"),
    Country(name: "United Arab Emirates", isoCode: "AE"),
    Country(name: "United Kingdom", isoCode: "GB"),
    Country(name: "United States", isoCode: "US"),
    Country(name: "Uruguay", isoCode: "UY"),
    Country(name: "Uzbekistan", isoCode: "UZ"),
    Country(name: "Venezuela", isoCode: "VE"),
    Country(name: "Vietnam", isoCode: "VN"),
    Country(name: "Yemen", isoCode: "YE"),
    Country(name: "Zambia", isoCode: "ZM"),
    Country(name: "Zimbabwe", isoCode: "ZW"),
]

struct CountryPickerOnboardingView: View {

    var onFinish: () -> Void

    @EnvironmentObject private var savedStore: SavedCountryStore
    @State private var search = ""
    @State private var selectedCountry: Country? = nil
    @State private var showConfirmation = false

    private var filtered: [Country] {
        search.isEmpty ? allCountries : allCountries.filter {
            $0.name.localizedCaseInsensitiveContains(search)
        }
    }

    var body: some View {
        if showConfirmation {
            confirmationView
        } else {
            pickerView
        }
    }

    // ── Picker ────────────────────────────────────────────────────────────

    private var pickerView: some View {
        VStack(spacing: 0) {

            VStack(spacing: 8) {
                Text("🌐")
                    .font(.system(size: 50))
                    .shadow(color: Color(hex: "FFB6C1").opacity(0.4), radius: 16)
                    .padding(.top, 12)

                Text("Where are you from?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text("Select your country to save it as your first favorite.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.5))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
            }
            .padding(.bottom, 16)

            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white.opacity(0.4))
                    .font(.subheadline)
                TextField("", text: $search,
                          prompt: Text("Search country…").foregroundStyle(.white.opacity(0.3)))
                    .foregroundStyle(.white)
                    .autocorrectionDisabled()
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 11)
            .background(.white.opacity(0.07))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.white.opacity(0.1), lineWidth: 1)
            )
            .padding(.horizontal, 16)
            .padding(.bottom, 8)

            ScrollView {
                LazyVStack(spacing: 6) {
                    ForEach(filtered) { country in
                        countryRow(country)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 4)
            }

            Button {
                guard let country = selectedCountry else { return }
                savedStore.toggle(country.isoCode)
                withAnimation { showConfirmation = true }
            } label: {
                Label("Save & Continue", systemImage: "star.fill")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(
                        Group {
                            if selectedCountry != nil {
                                LinearGradient(
                                    colors: [Color(hex: "FFB6C1"), Color(hex: "FF8FA3")],
                                    startPoint: .leading, endPoint: .trailing
                                )
                            } else {
                                LinearGradient(
                                    colors: [.gray.opacity(0.4), .gray.opacity(0.4)],
                                    startPoint: .leading, endPoint: .trailing
                                )
                            }
                        }
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            .disabled(selectedCountry == nil)
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }

    @ViewBuilder
    private func countryRow(_ country: Country) -> some View {
        Button {
            withAnimation(.spring(response: 0.25)) {
                selectedCountry = country
            }
        } label: {
            HStack(spacing: 12) {
                Text(flagEmoji(for: country.isoCode))
                    .font(.title3)

                Text(country.name)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.85))

                Spacer()

                if selectedCountry?.isoCode == country.isoCode {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(Color(hex: "FFB6C1"))
                        .font(.body)
                        .transition(.scale.combined(with: .opacity))
                }
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(selectedCountry?.isoCode == country.isoCode
                          ? Color(hex: "FFB6C1").opacity(0.15)
                          : Color.white.opacity(0.05))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(selectedCountry?.isoCode == country.isoCode
                            ? Color(hex: "FFB6C1").opacity(0.5)
                            : Color.white.opacity(0.07),
                            lineWidth: 1.5)
            )
        }
        .buttonStyle(.plain)
    }

    // ── Confirmation ──────────────────────────────────────────────────────

    private var confirmationView: some View {
        VStack(spacing: 20) {
            Spacer()

            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(hex: "FFB6C1"), Color(hex: "FF8FA3")],
                            startPoint: .topLeading, endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(hex: "FFB6C1").opacity(0.5), radius: 24)

                Image(systemName: "checkmark")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundStyle(.white)
            }

            Text("You're all set!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)

            VStack(spacing: 6) {
                Text("\(selectedCountry?.name ?? "") has been saved as your first favorite.")
                    .font(.body)
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)

                Text("Explore holidays, set reminders, and discover the world's observances.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.4))
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 32)

            Spacer()

            Button {
                onFinish()
            } label: {
                Text("Go to Remindo →")
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
                    .shadow(color: Color(hex: "FFB6C1").opacity(0.4), radius: 12)
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────

    private func flagEmoji(for isoCode: String) -> String {
        isoCode
            .uppercased()
            .unicodeScalars
            .compactMap { Unicode.Scalar(127397 + $0.value) }
            .map { String($0) }
            .joined()
    }
}
