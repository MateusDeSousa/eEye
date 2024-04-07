import UIKit

class ExamAstigmatismoViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollAstigmatismo: UIScrollView!
    @IBOutlet weak var pageControlAstigmatismo: UIPageControl!
    
    var slides = [AstigmatismoView]()
    let helper = FileHelper()
    let encoder = JSONEncoder()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollAstigmatismo.delegate = self
        
        slides = createSlides()
        setupSlideScrollView(slide: slides)
        
        pageControlAstigmatismo.numberOfPages = slides.count
        pageControlAstigmatismo.currentPage = 0
		view.bringSubviewToFront(pageControlAstigmatismo)
        
        
    }
    
    
    func createSlides() -> [AstigmatismoView] {
        
        let slide1: AstigmatismoView = Bundle.main.loadNibNamed("AstigmatismoView", owner: self, options: nil)?.first as! AstigmatismoView
        slide1.examImage.image = UIImage(named: "astigmatismo-exam-img-1")
        slide1.examDescription.text = "Observe bem estas linhas pretas..."
        slide1.examQuestion.text = "Então, as linhas pretas variam de intensidade e grossura?"
        slide1.examAnswer.selectedSegmentIndex = 1
        
        let slide2: AstigmatismoView = Bundle.main.loadNibNamed("AstigmatismoView", owner: self, options: nil)?.first as! AstigmatismoView
        slide2.examImage.image = UIImage(named: "astigmatismo-exam-img-2")
        slide2.examDescription.text = "Observe bem todas estas linhas..."
        slide2.examQuestion.text = "Você enxerga as linhas verticais e horizontais da mesma espessura?"
        slide2.examAnswer.selectedSegmentIndex = 1
        
        let slide3: AstigmatismoView = Bundle.main.loadNibNamed("AstigmatismoView", owner: self, options: nil)?.first as! AstigmatismoView
        slide3.examImage.image = UIImage(named: "astigmatismo-exam-img-3")
        slide3.examDescription.text = "Observe atentamente estas linhas..."
        slide3.examQuestion.text = "Afinal, você vê as linhas em várias claridades?"
        slide3.examAnswer.selectedSegmentIndex = 1
        
        
        return [slide1,slide2,slide3]
    }
    
    func setupSlideScrollView(slide : [AstigmatismoView]){
        scrollAstigmatismo.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollAstigmatismo.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollAstigmatismo.isPagingEnabled = true
        
        
        for i in 0 ..< slides.count{
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollAstigmatismo.addSubview(slides[i])
        }
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex =  round(scrollView.contentOffset.x/view.frame.width)
        pageControlAstigmatismo.currentPage = Int(pageIndex)
//        if scrollView.contentOffset.y != 0 {
//            scrollView.contentOffset.y = 0
//        }
    }
    
    @IBAction func performCancelButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func performRedoButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func performSaveButton(_ sender: Any) {
        var isTrue = 0
        var diagnosis : String
        
        for slider in slides{
            if slider.examAnswer.selectedSegmentIndex == 0{
                isTrue += 1
            }
        }
        
        if isTrue >= 2{
            diagnosis = "Fique atento, dos 3 testes feitos, você marcou \(isTrue) como sim, portanto, ha uma grande possibilidade de você ter Astigmatismo. Procure um oftalmologista."
        } else{ 
            diagnosis = "Não se preocupe, provavelmente você não tem Astigmatismo, mas não seja descuidado com sua saúde e visite um oftalmologista regularmente."
        }
        
        let exam = Exam(diagnosis: diagnosis)
        
        do {
            let data = try encoder.encode(exam)
            print(helper.createFile(with: data, path: "astigmatismo.json"))
            
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
