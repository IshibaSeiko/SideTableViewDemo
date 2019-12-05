//
//  CustomSplitViewController.swift
//  SideTableViewDemo
//
//  Created by STV-M025 on 2019/12/05.
//  Copyright © 2019 STV-M025. All rights reserved.
//

import UIKit

class CustomSplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sideMenuStoryboard: UIStoryboard = UIStoryboard(name: "SideMenu", bundle: nil)
        let sideMenuVC = sideMenuStoryboard.instantiateViewController(withIdentifier: "SideMenuViewController")
        
        let sideMenuNC = UINavigationController(rootViewController: sideMenuVC)
                
        let detailStoryboard: UIStoryboard = UIStoryboard(name: "Detail", bundle: nil)
        let detailVC = detailStoryboard.instantiateViewController(withIdentifier: "DetailViewController")
        
        let detailNC = UINavigationController(rootViewController: detailVC)

        self.viewControllers = [sideMenuNC, detailNC]
        self.preferredDisplayMode = .allVisible
    }
}
