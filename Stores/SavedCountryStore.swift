import Foundation
import Combine

class SavedCountryStore: ObservableObject {
    
    @Published var savedIsoCodes: [String] {
        didSet {
            UserDefaults.standard.set(savedIsoCodes, forKey: "savedCountryIsoCodes")
        }
    }
    
    init() {
        self.savedIsoCodes =
            UserDefaults.standard.stringArray(forKey: "savedCountryIsoCodes") ?? []
    }
    
    func toggle(_ isoCode: String) {
        if savedIsoCodes.contains(isoCode) {
            savedIsoCodes.removeAll { $0 == isoCode }
        } else {
            savedIsoCodes.append(isoCode)
        }
    }
}
