import UIKit

class ExamDaltonismoViewController: UIViewController {

    
    
    let encoder = JSONEncoder()
    let helper = FileHelper()
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var resultImage1TextField: UITextField!
    @IBOutlet weak var resultImage2TextField: UITextField!
    @IBOutlet weak var resultImage3TextField: UITextField!
    @IBOutlet weak var resultImage4TextField: UITextField!
    @IBOutlet weak var resultImage5TextField: UITextField!
    
    var count = 0
    
    var images = [
        UIImage.init(named: "daltonismo-exam-img-1"),
        UIImage.init(named: "daltonismo-exam-img-2"),
        UIImage.init(named: "daltonismo-exam-img-3"),
        UIImage.init(named: "daltonismo-exam-img-4"),
        UIImage.init(named: "daltonismo-exam-img-5")
    ]
    
    var defaultResults = [8, 6, 74, 15, 12]
    var testResults    = [0, 0,  0,  0,  0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.image = images[count]
        hiddenUnunsedComponents(index: count)
    }
    
    @IBAction func previousImage(_ sender: Any) {
        count -= 1
        
        if count < 0 {
            count = images.count - 1
        }
        
        mainImage.image = images[count]
        hiddenUnunsedComponents(index: count)
    }
    
    @IBAction func nextImage(_ sender: Any) {
        count += 1
        
        if count == images.count{
            count = 0
        }
        
        mainImage.image = images[count]
        hiddenUnunsedComponents(index: count)
    }
    
    private func hiddenUnunsedComponents(index: Int) {
        // Habilitar somente o campo necessario
        switch index {
        case 0:
            resultImage1TextField.isEnabled = true
            resultImage2TextField.isEnabled = false
            resultImage3TextField.isEnabled = false
            resultImage4TextField.isEnabled = false
            resultImage5TextField.isEnabled = false
        case 1:
            resultImage1TextField.isEnabled = false
            resultImage2TextField.isEnabled = true
            resultImage3TextField.isEnabled = false
            resultImage4TextField.isEnabled = false
            resultImage5TextField.isEnabled = false
        case 2:
            resultImage1TextField.isEnabled = false
            resultImage2TextField.isEnabled = false
            resultImage3TextField.isEnabled = true
            resultImage4TextField.isEnabled = false
            resultImage5TextField.isEnabled = false
        case 3:
            resultImage1TextField.isEnabled = false
            resultImage2TextField.isEnabled = false
            resultImage3TextField.isEnabled = false
            resultImage4TextField.isEnabled = true
            resultImage5TextField.isEnabled = false
        case 4:
            resultImage1TextField.isEnabled = false
            resultImage2TextField.isEnabled = false
            resultImage3TextField.isEnabled = false
            resultImage4TextField.isEnabled = false
            resultImage5TextField.isEnabled = true
        default:
            return
        }
    }
    
    @IBAction func setTestResults(_ sender: Any){
        testResults[0] = Int(resultImage1TextField.text ?? "0") ?? 0
        testResults[1] = Int(resultImage2TextField.text ?? "0") ?? 0
        testResults[2] = Int(resultImage3TextField.text ?? "0") ?? 0
        testResults[3] = Int(resultImage4TextField.text ?? "0") ?? 0
        testResults[4] = Int(resultImage5TextField.text ?? "0") ?? 0
        print(testResults)
    }
    
    @IBAction func performCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func performRedoButton(_ sender: Any) {
        count = 0
        mainImage.image = images[count]
        hiddenUnunsedComponents(index: count)
        testResults = [0, 0, 0, 0, 0]
        resultImage1TextField.text = ""
        resultImage2TextField.text = ""
        resultImage3TextField.text = ""
        resultImage4TextField.text = ""
        resultImage5TextField.text = ""
    }
    
    @IBAction func performSaveButton(_ sender: Any) {
        var correctAnswers = 0
        
        for defaulResult in defaultResults {
            for testResult in testResults {
                if defaulResult == testResult {
                    correctAnswers += 1
                }
            }
        }
        var analysisResult = ""
        
        switch correctAnswers {
            case 0:
                analysisResult = "Você não acertou nenhuma resposta, seu resultado é muito preocupante.\nRecomendamos que procure um oftalmologista."
            
            case 1:
                analysisResult = "Você acertou 1 resposta, portanto o resultado é preocupante.\nProcure um oftalmologista."
            
            case 2:
                analysisResult = "Você acertou 2 de 5 respostas e obteve um resultado preocupante.\nProcure um oftalmologista."
            
            case 3:
                analysisResult = "Você acertou 3 de 5 respostas, e seu resultado foi regular, mas mesmo assim não se esqueça de procure um oftalmologista."
            
            case 4:
                analysisResult = "Muito bem, você acertou 4 de 5 resposta.\nSeu resultado foi muito bom, mas mesmo com este resultado muito positivo nào relaxe e procure um oftalmologista regularmente."
            
            case 5:
                analysisResult = "Excelente, você acertou todos os valores.\nPorém, por precaução, não deixe de procurar um oftalmologista regularmente."
            default:
                return
        }
        
        let exam = Exam(diagnosis: analysisResult)
        
        do {
            let data = try encoder.encode(exam)
            print(helper.createFile(with: data, path: "daltonismo.json"))
            
            showAlert(title: "Exame salvo com sucesso", message: "Exame salvao com sucesso, para visualizar o resultado vá a tela de resultados.")
        } catch (let error) {
            print(error.localizedDescription)
            showAlert(title: "Erro ao salvar exame", message: "Ocorreu um erro ao salvar seu exame, tente novamente")
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
