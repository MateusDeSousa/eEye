import Foundation

class FileHelper {
    
    var manager = FileManager.default
    var mainPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    func createFile(with data: Data, path: String) -> Bool {
        let contentPath = mainPath.appendingPathComponent(path)
        manager.createFile(atPath: contentPath.path, contents: data, attributes: nil)
        
        return manager.fileExists(atPath: contentPath.path)
    }
    
    func getFile(with path: String) -> Data? {
        let contentPath = mainPath.appendingPathComponent(path)
        return manager.contents(atPath: contentPath.path)
    }
    
}
