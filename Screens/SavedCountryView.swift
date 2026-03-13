import SwiftUI

struct SavedCountryView: View {
    
    @EnvironmentObject var savedStore: SavedCountryStore
    let allCountries = DataLoader.loadCountries()
    
    // Helper to get full country name from ISO code
    func countryName(from isoCode: String) -> String {
        allCountries.first { $0.isoCode == isoCode }?.name ?? isoCode
    }
    
    // Helper to get flag emoji from ISO code
    func flag(from isoCode: String) -> String {
        let base: UInt32 = 127397
        var flag = ""
        for scalar in isoCode.uppercased().unicodeScalars {
            if let scalarValue = UnicodeScalar(base + scalar.value) {
                flag.unicodeScalars.append(scalarValue)
            }
        }
        return flag
    }
    
    // Delete country from saved list with animation
    func deleteCountry(at offsets: IndexSet) {
        withAnimation {
            offsets.forEach { index in
                let iso = savedStore.savedIsoCodes[index]
                savedStore.toggle(iso)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            if savedStore.savedIsoCodes.isEmpty {
                VStack {
                    Spacer()
                    Text("No saved countries yet")
                        .foregroundColor(.gray)
                    Spacer()
                }
                .navigationTitle("Saved Countries")
            } else {
                List {
                    ForEach(savedStore.savedIsoCodes, id: \.self) { iso in
                        // ✅ Hide chevron using .tint(.clear)
                        NavigationLink(destination: HolidayListView(
                            countryName: countryName(from: iso),
                            isoCode: iso
                        )) {
                            HStack {
                                Text("\(flag(from: iso)) \(countryName(from: iso))")
                                Spacer()
                            }
                            .padding(.vertical, 4)
                        }
                        .tint(.clear)
                    }
                    .onDelete(perform: deleteCountry)
                }
                .navigationTitle("Saved Countries")
            }
        }
    }
}
