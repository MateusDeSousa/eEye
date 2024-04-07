import UIKit

final class TabBarViewController: UITabBarController {
	private let colorTabBar = UIColor(red: 81/255, green: 45/255, blue: 168/255, alpha: 1)
	
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyleTabBar()
		makeTabBarItems()
    }
    
	private func makeTabBarItems() {
		let examsViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "ExamsViewController")
		let resultsViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "ResultsViewController")
		
		let items: [TabBarItemModel] = [
			.init(title: "News", icon: UIImage(named: "news"), controller: NewsViewController()),
			.init(title: "Exams", icon: UIImage(named: "exams"), controller: examsViewController),
			.init(title: "Resultados", icon: UIImage(named: "results"), controller: resultsViewController)
		]
		viewControllers = items.compactMap { self.createController(item: $0) }
	}
    
	private func createController(item: TabBarItemModel) -> UINavigationController {
		let navController = UINavigationController(rootViewController: item.controller)
		navController.tabBarItem.title = item.title
		navController.tabBarItem.image = item.icon
		setStyleNavigationBar(navController)
		item.controller.title = item.title
		return navController
    }
	
	private func setStyleNavigationBar(_ navController: UINavigationController) {
		let navBarAppearence = UINavigationBarAppearance()
		navBarAppearence.configureWithOpaqueBackground()
		navBarAppearence.backgroundColor = colorTabBar
		navBarAppearence.titleTextAttributes = [.foregroundColor : UIColor.white]
		navController.navigationBar.standardAppearance = navBarAppearence
		navController.navigationBar.scrollEdgeAppearance = navBarAppearence
	}
    
    private func setStyleTabBar(){
        tabBar.barTintColor = colorTabBar
        tabBar.tintColor = .white
    }
}
