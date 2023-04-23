//
//  NavigationViewController.swift
//  Animations
//
//  Created by Александр on 21.04.2023.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    convenience init() {
        self.init(rootViewController: TabBarViewController())
    }
}

