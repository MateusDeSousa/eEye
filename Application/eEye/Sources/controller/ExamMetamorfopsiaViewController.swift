import UIKit

class ExamMetamorfopsiaViewController: UIViewController {
    
    var totalValue = 0
    var results: [String] = [
        "Que bom, você não tem metamorfopsia",
        "Você tem 20% de chance de ter metamorfopsia",
        "Eita seu resultado é preocupante, você tem 40% de chance de ter metamorfopsia",
        "Recomendamos que vá imediatamente ao oftamologista, você tem 60% de risco segundo suas respostas de ter metamorfopsia",
        "Atenção total, procure um oftamologista urgente pois suas chances de ter metamorfopsia são muito altas"]
    
    var diagnosis = ""
    
    @IBOutlet weak var segmentedValue1: UISegmentedControl!
    @IBOutlet weak var segmentedValue2: UISegmentedControl!
    @IBOutlet weak var segmentedValue3: UISegmentedControl!
    @IBOutlet weak var segmentedValue4: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func performCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func performRedoButton(_ sender: Any) {
        totalValue = 0
        diagnosis = ""
        segmentedValue1.selectedSegmentIndex = 0
        segmentedValue2.selectedSegmentIndex = 0
        segmentedValue3.selectedSegmentIndex = 0
        segmentedValue4.selectedSegmentIndex = 0
    }
    
    @IBAction func performSaveButton(_ sender: Any) {
        switch totalValue {
            case 0:
                diagnosis = results[0]
            case 20:
                diagnosis = results[1]
            case 40:
                diagnosis = results[2]
            case 60:
                diagnosis = results[3]
            case 80:
                diagnosis = results[4]
            default:
                break
            }
        
        let exam = Exam(diagnosis: diagnosis)
        let encoder = JSONEncoder()
        let helper = FileHelper()
        
        do {
            let data = try encoder.encode(exam)
            print(helper.createFile(with: data, path: "metamorfopsia.json"))
                
            showAlert(title: "Exame salvo com sucesso", message: "Exame salvao com sucesso, para visualizar o resultado vá a tela de resultados.")
            
        } catch (let error) {
            print(error.localizedDescription)
            showAlert(title: "Erro ao salvar exame", message: "Ocorreu um erro ao salvar seu exame, tente novamente")               
        }
    }
    
    @IBAction func changeValue(_ sender: UISegmentedControl) {
        switch sender.restorationIdentifier {
        case "segmented1Id":
            changeValue(segmented: sender)
        case "segmented2Id":
            changeValue(segmented: sender)
        case "segmented3Id":
            changeValue(segmented: sender)
        case "segmented4Id":
            changeValue(segmented: sender)
        default:
            return
        }
        
    }
    
    private func changeValue(segmented: UISegmentedControl) {
        if segmented.selectedSegmentIndex == 1{
            totalValue += 20
        } else {
            totalValue -= 20
        }
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        self.present(alert, animated: true, completion: nil)
        
        let when = DispatchTime.now() + 3
        DispatchQueue.main.asyncAfter(deadline: when){
            alert.dismiss(animated: true, completion: nil)
            self.dismiss(animated: true, completion: nil)
        }
    }
}
