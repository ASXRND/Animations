//
//  TabBarViewController.swift
//  Animations
//
//  Created by Александр on 21.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let oneViewController = OneViewController()
    private let twoViewController = TwoViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .blue
        generateTabBar()
        
        //view.backgroundColor = .blue
    }

    //MARK: - Creation NC
    private func generateTabBar() {
        viewControllers = [
            createNavController(vc: oneViewController, itemName: "one", itemImage: "1.lane"),
            createNavController(vc: twoViewController, itemName: "two", itemImage: "2.lane")
        ]
    }

    //MARK: - Settings NC
    private func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 5, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)

        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item

        return navController
    }
}
