import UIKit

class NewsViewController: UIViewController {
    
    var news : [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        news = News.getNews()
        print("The news are")
        print(news)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newsDetailsSegue" {
            let newsDetailsController = segue.destination as! NewsDetailsViewController
            newsDetailsController.currentNews = sender as? News
        }
    }
    
}

extension NewsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.news.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNews = News(thumbnail: news[indexPath.row].thumbnail, title: news[indexPath.row].title, content: news[indexPath.row].content)
        
        performSegue(withIdentifier: "newsDetailsSegue", sender: selectedNews)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! NewsTableViewCell
        
        cell.thumbnail.image = news[indexPath.row].thumbnail
        cell.title.text = news[indexPath.row].title
        
        return cell
    }
    
}
