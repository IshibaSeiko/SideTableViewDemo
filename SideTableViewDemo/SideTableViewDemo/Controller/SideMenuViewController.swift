//
//  SideMenuViewController.swift
//  SideTableViewDemo
//
//  Created by STV-M025 on 2019/12/05.
//  Copyright © 2019 STV-M025. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    @IBOutlet weak var sideMenuTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        sideMenuTable.delegate = self
        sideMenuTable.dataSource = self
        
        sideMenuTable.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuTableViewCell")
    }
}

// MARK: - UITableViewDelegate
extension SideMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailStoryboard: UIStoryboard = UIStoryboard(name: "Detail", bundle: nil)
        guard let detailVC = detailStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        detailVC.naviTitle = indexPath.row
        let detailNC = UINavigationController(rootViewController: detailVC)
        self.splitViewController?.showDetailViewController(detailNC, sender: nil)
    }
}

// MARK: - UITableViewDataSource
extension SideMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath)
        return cell
    }
}
