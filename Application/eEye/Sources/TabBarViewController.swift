import UIKit

final class TabBarViewController: UITabBarController {
	private let colorTabBar = UIColor(red: 81/255, green: 45/255, blue: 168/255, alpha: 1)
	
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyleTabBar()
		makeTabBarItems()
    }
    
	private func makeTabBarItems() {
		let items: [TabBarItemModel] = [
			.init(title: "News", icon: UIImage(named: "news"), controller: NewsViewController()),
			.init(title: "Exams", icon: UIImage(named: "exams"), controller: UIViewController()),
			.init(title: "Resultados", icon: UIImage(named: "results"), controller: UIViewController())
		]
		viewControllers = items.compactMap { self.createController(item: $0) }
	}
    
	private func createController(item: TabBarItemModel) -> UINavigationController {
		let navController = UINavigationController(rootViewController: item.controller)
		navController.tabBarItem.title = item.title
		navController.tabBarItem.image = item.icon
		navController.navigationBar.barTintColor = colorTabBar
		navController.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
		item.controller.title = item.title
		return navController
    }
    
    private func setStyleTabBar(){
        tabBar.barTintColor = colorTabBar
        tabBar.tintColor = .white
    }
}
