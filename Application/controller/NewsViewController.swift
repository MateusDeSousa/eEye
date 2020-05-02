import UIKit

class NewsViewController: UIViewController {
    
    var tableView: UITableView?
    var news : [News] = []
    
    override func loadView() {
        super.loadView()
        let newView = NewsView()
        tableView = newView.newsTableView
        view = newView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        news = News.getNews()
        tableView?.register(NewCell.self, forCellReuseIdentifier: NewCell.identifier)
        tableView?.delegate = self
        tableView?.dataSource = self
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "newsDetailsSegue" {
//            let newsDetailsController = segue.destination as! NewsDetailsViewController
//            newsDetailsController.currentNews = sender as? News
//        }
//    }
    
}

extension NewsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell") as! NewCell
        
        cell.thumbnail.image = news[indexPath.row].thumbnail
        cell.title.text = news[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNews = News(thumbnail: news[indexPath.row].thumbnail, title: news[indexPath.row].title, content: news[indexPath.row].content)
        
        performSegue(withIdentifier: "newsDetailsSegue", sender: selectedNews)
    }
    
}
