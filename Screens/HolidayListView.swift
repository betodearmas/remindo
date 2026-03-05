import SwiftUI

struct HolidayListView: View {
    
    @EnvironmentObject var savedStore: SavedCountryStore
    
    let countryName: String
    let isoCode: String
    
    // Load holidays dynamically based on ISO code
    var holidays: [Holiday] {
        DataLoader.loadHolidays(for: isoCode)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Holidays for \(countryName)")
                .font(.title)
            
            List(holidays) { holiday in
                VStack(alignment: .leading) {
                    Text(holiday.name)
                        .font(.headline)
                    
                    if let local = holiday.localName {
                        Text(local)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Text(holiday.date)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
        }
        .navigationTitle(countryName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    savedStore.toggle(isoCode)
                } label: {
                    if savedStore.savedIsoCodes.contains(isoCode) {
                        Text("Saved ✓")
                    } else {
                        Text("Save")
                    }
                }
            }
        }
    }
}
