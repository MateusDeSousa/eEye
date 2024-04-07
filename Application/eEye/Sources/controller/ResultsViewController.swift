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
        var result = ""
		guard let data = helper.getFile(with: fileName) else {
			return result
		}
        do {
			let exam = try JSONDecoder().decode(Exam.self, from: data)
			result = exam.diagnosis
        } catch (let error) {
            print(error.localizedDescription)
        }
		return result
    }
    
}
