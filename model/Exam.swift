import Foundation

class Exam : Codable {
    
    var diagnosis : String
 
    enum CodingKeys: String, CodingKey {
        case diagnosis = "diagnosis"
    }
 
    init(diagnosis : String) {
        self.diagnosis = diagnosis
     }
 
 }
