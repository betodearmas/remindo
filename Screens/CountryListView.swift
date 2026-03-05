
import SwiftUI

struct CountryListView: View {
    
    let countries = DataLoader.loadCountries()
    
    var body: some View {
        NavigationStack {
            List(countries) { country in
                NavigationLink(
                    destination: HolidayListView(
                        countryName: country.name,
                        isoCode: country.isoCode
                    )
                ) {
                    HStack(spacing: 12) {
                        Text(flag(from: country.isoCode))
                            .font(.largeTitle)
                        
                        Text(country.name)
                    }
                }
            }
            .navigationTitle("Select Country")
        }
    }
}

func flag(from isoCode: String) -> String {
    let base: UInt32 = 127397
    var flag = ""
    
    for scalar in isoCode.unicodeScalars {
        if let scalarValue = UnicodeScalar(base + scalar.value) {
            flag.unicodeScalars.append(scalarValue)
        }
    }
    
    return flag
}
