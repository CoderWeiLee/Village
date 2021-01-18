//
//  PeopleDetailController.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//
import UIKit
import Foundation
class PeopleDetailController: UIViewController {
    var titleString: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = titleString
        navigationController?.navigationBar.barTintColor = .white
        let img = UIImageView(image: UIImage(named: "btn-top-backwhite"))
        img.contentMode = .left
        img.isUserInteractionEnabled = true
        let ges = UITapGestureRecognizer(target: self, action: #selector(back))
        img.addGestureRecognizer(ges)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: img)
        
    }
    
    
    @objc func back() {
        navigationController?.popViewController(animated: true)
    }
}
