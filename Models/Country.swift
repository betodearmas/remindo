
import Foundation

struct Country: Identifiable, Codable {
    let id = UUID()
    let name: String
    let isoCode: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case isoCode
    }
}
