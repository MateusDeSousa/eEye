import UIKit

class NewsDetailsViewController: UIViewController {
    
    @IBOutlet weak var newsThumbnail : UIImageView!
    @IBOutlet weak var newsContent : UITextView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    
    var currentNews : News?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let news = currentNews {
            newsThumbnail.image = news.thumbnail
            navigationBar.topItem?.title = news.title
            newsContent.text = news.content
        }
    }
    
    @IBAction func performCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
