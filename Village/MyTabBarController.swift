//
//  MyTabBarController.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//

import UIKit
class MyTabBarController: UITabBarController {
//    override func loadView() {
//        if let bundleID = Bundle.main.bundleIdentifier {
//            Bundle.main.changeIdentifier(bundleID)
//        }
//        super.loadView()
//    }
    
    var mytabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytabBar = UITabBar()
        addChildViewControllers()
        self.tabBar.tintColor = UIColor(named: "indicatorColor")
    }
    
    private func addChildViewControllers() {
        setChildViewController(HomeController(), title: "", imageName: "tab-recommend")
        setChildViewController(MoreController(), title: "", imageName: "tab-explore")
        setChildViewController(DIYController(), title: "", imageName: "tab-social")
        setChildViewController(MyController(), title: "", imageName: "tab-mine")
    }
    
    private func setChildViewController(_ childController: UIViewController, title: String, imageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "-active")
        childController.title = title
        let navVc = UINavigationController(rootViewController: childController)
        addChild(navVc)
    }
    
    
}

