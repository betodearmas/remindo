import Foundation

class DataLoader {
    
    static func loadCountries() -> [Country] {
        guard let url = Bundle.main.url(forResource: "countries", withExtension: "json") else {
            print("countries.json not found")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let countries = try JSONDecoder().decode([Country].self, from: data)
            return countries
        } catch {
            print("Error loading countries:", error)
            return []
        }
    }

    static func loadHolidays(for isoCode: String) -> [Holiday] {
        let fileName = "holidays_\(isoCode.uppercased())"
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
            print("Holiday file not found:", fileName)
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let holidays = try JSONDecoder().decode([Holiday].self, from: data)
            return holidays
        } catch {
            print("Error loading holidays:", error)
            return []
        }
    }
}
