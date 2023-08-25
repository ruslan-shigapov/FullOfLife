//
//  TabBarController.swift
//  FullOfLife
//
//  Created by Руслан Шигапов on 25.08.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        setupUI()
    }
    
    private func setupUI() {
        tabBar.tintColor = .label
        selectedIndex = 1
    }
    
    private func setViewControllers() {
        setViewControllers(
            [
                createNavController(
                    for: SpheresViewController(),
                    with: "Spheres",
                    and: UIImage(systemName: "checklist")
                ),
                createNavController(
                    for: MainViewController(),
                    with: "Hi, ",
                    and: UIImage(systemName: "circle.dashed")
                ),
                createNavController(
                    for: AnalysisViewController(),
                    with: "Self-Analysis",
                    and: UIImage(systemName: "pencil.and.outline")
                )
            ],
            animated: true
        )
    }
    
    private func createNavController(for rootViewController: UIViewController,
                                     with title: String,
                                     and image: UIImage?) -> UIViewController {
        let navController = UINavigationController(
            rootViewController: rootViewController
        )
        rootViewController.title = title
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.image = image
        navController.tabBarItem.title = nil
        return navController
    }
}
