import UIKit

class ExamMetamorfopsiaInstructionsViewController: UIViewController {

    @IBOutlet weak var startExamButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startExamButton.layer.cornerRadius = 9
    }
    
    @IBAction func performCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func performStartExam(_ sender: Any) {
        performSegue(withIdentifier: "startExamMetamorfopsiaSegue", sender: nil)
    }
    
}
