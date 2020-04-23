import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var diagnosisTitle1: UILabel!
    @IBOutlet weak var diagnosisContent1: UITextView!
    @IBOutlet weak var diagnosisTitle2: UILabel!
    @IBOutlet weak var diagnosisContent2: UITextView!
    @IBOutlet weak var diagnosisTitle3: UILabel!
    @IBOutlet weak var diagnosisContent3: UITextView!
    
    let helper = FileHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDiagnosisFields()
    }
    
    private func setDiagnosisFields() {
        diagnosisContent1.text = getDiagnosis(fileName: FileNameHelper().DALTONISMO)
        diagnosisContent2.text = getDiagnosis(fileName: FileNameHelper().ASTIGMATISMO)
        diagnosisContent3.text = getDiagnosis(fileName: FileNameHelper().METAMORFOPSIA)
    }
    
    func getDiagnosis(fileName : String) -> String {
        var diagnosis = ""
        
        do {
            let newData = helper.getFile(with: fileName)
            let json = try JSONSerialization.jsonObject(with: newData!, options: .allowFragments)
            let tempDict = json as! Dictionary<String, Any>
            diagnosis = tempDict["diagnosis"] as! String
        } catch (let error) {
            print(error.localizedDescription)
        }
        
        return diagnosis
    }
    
}
