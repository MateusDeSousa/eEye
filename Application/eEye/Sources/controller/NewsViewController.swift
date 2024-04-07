import UIKit

class NewsViewController: UITableViewController {
	private lazy var newItems: [News] = News.getNews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.estimatedRowHeight = 100
		tableView.rowHeight = UITableView.automaticDimension
		tableView.separatorStyle = .none
		tableView.backgroundColor = UIColor(named: "homeColor")
        tableView.register(NewCell.self, forCellReuseIdentifier: NewCell.identifier)
		
		
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "newsDetailsSegue" {
//            let newsDetailsController = segue.destination as! NewsDetailsViewController
//            newsDetailsController.currentNews = sender as? News
//        }
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newItems.count
    }
    
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCell") as! NewCell
        
        cell.thumbnail.image = newItems[indexPath.row].thumbnail
        cell.title.text = newItems[indexPath.row].title
        
        return cell
    }
    
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNews = News(thumbnail: newItems[indexPath.row].thumbnail, title: newItems[indexPath.row].title, content: newItems[indexPath.row].content)
        
        performSegue(withIdentifier: "newsDetailsSegue", sender: selectedNews)
    }
    
}
