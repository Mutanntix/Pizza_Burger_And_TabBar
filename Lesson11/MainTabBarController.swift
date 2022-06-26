//
//  TabBarController.swift
//  Lesson11
//
//  Created by Мурад Чеерчиев on 26.06.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
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
    
    func setupViewControllers() {
        let pizzaImg = UIImage(named: "pizza2")!
        let burgerImg = UIImage(named: "burger2")!
        let selectedBurgerImg = UIImage(named: "burgerSelected")!
        
        viewControllers = [
            createNavController(for: BurgerMainViewController(), title: "Burgers", image: burgerImg, selectedImage: selectedBurgerImg ),
            createNavController(for: PizzaMainViewController(), title: "Pizza", image: pizzaImg)
        ]
    }

}
