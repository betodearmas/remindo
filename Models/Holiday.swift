
import Foundation

struct Holiday: Identifiable, Codable {
    let id = UUID()
    let name: String
    let date: String
    let localName: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case date
        case localName
    }
}
