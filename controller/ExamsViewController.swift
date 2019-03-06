import UIKit

class ExamsViewController: UINavigationController {
    
    let BTN_DALTONISMO = "btnDaltonismo"
    let BTN_ASTIGMATISMO = "btnAstigmatismo"
    let BTN_METAMORFOPSIA = "btnMetamorfopsia"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func performButtonClick(_ sender: UIButton) {
        
        switch sender.restorationIdentifier! {
        case BTN_DALTONISMO:
            print("Daltomnismo")
        case BTN_ASTIGMATISMO:
            print("Astigmatismo")
        case BTN_METAMORFOPSIA:
            print("Metamorfopsia")
        default:
            print("An Erro Occurred - Default")
        }
        
    }
    
}
