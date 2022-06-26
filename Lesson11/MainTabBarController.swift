//
//  TabBarController.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 26.06.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    let tabBarTopLine = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.backgroundColor = UIColor(red: 100/255, green: 125/255, blue: 210/255, alpha: 0.2)
        self.tabBar.tintColor = .darkGray
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupTopLine()
    }
}

//MARK: UI
extension MainTabBarController {
    func setupViewControllers() {
        let pizzaImg = UIImage(named: "pizza2")!
        let burgerImg = UIImage(named: "burger2")!
        let selectedBurgerImg = UIImage(named: "burgerSelected")!
        let selectedPizzaImg = UIImage(named: "pizzaSelected")
        
        viewControllers = [
            createNavController(for: BurgerMainViewController(), title: "Burgers", image: burgerImg, selectedImage: selectedBurgerImg ),
            createNavController(for: PizzaMainViewController(), title: "Pizza", image: pizzaImg, selectedImage: selectedPizzaImg)
        ]
    }
    
    fileprivate func createNavController(for
                                         rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage,
                                         selectedImage: UIImage? = nil) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.tabBarItem.selectedImage = selectedImage
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        
        return navController
    }
}

//MARK: Methods
extension MainTabBarController {
    private func setupTopLine() {
        tabBarTopLine.backgroundColor = .darkGray
        let origin = CGPoint(x: 0,
                             y: tabBar.frame.minY + 0.2)
        let size = CGSize(width: tabBar.frame.width,
                          height: 0.2)
        tabBarTopLine.frame = CGRect(origin: origin,
                                     size: size)
        
        view.addSubview(tabBarTopLine)
    } 
}
