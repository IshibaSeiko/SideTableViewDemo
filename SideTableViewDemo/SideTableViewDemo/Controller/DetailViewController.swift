//
//  DetailViewController.swift
//  SideTableViewDemo
//
//  Created by STV-M025 on 2019/12/05.
//  Copyright © 2019 STV-M025. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var naviTitle: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationTitle = UILabel.init(frame: CGRect(x: 0,
                                                         y: 0,
                                                         width: 100,
                                                         height: 100))
        navigationTitle.font = UIFont.systemFont(ofSize: 21)
        navigationTitle.text = "Title\(naviTitle ?? 0)"
        navigationTitle.textAlignment = .center
        self.navigationItem.titleView = navigationTitle
    }
}
