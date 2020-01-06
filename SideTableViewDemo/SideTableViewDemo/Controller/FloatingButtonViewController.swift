//
//  FloatingButtonViewController.swift
//  SideTableViewDemo
//
//  Created by STV-M025 on 2019/12/05.
//  Copyright © 2019 STV-M025. All rights reserved.
//

import UIKit

class FloatingButtonViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var xLayoutConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideMenuHideButton: UIButton!
    
    var splidViewController: CustomSplitViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let splitViewStoryboard: UIStoryboard = UIStoryboard(name: "InitialView", bundle: nil)
        guard let splidVC = splitViewStoryboard.instantiateViewController(withIdentifier: "CustomSplitViewController") as? CustomSplitViewController else {
            return
        }
        splidViewController = splidVC
        
        displayContentController(content: splidViewController!, container: containerView)
        
    }
    
    func displayContentController(content:UIViewController, container:UIView){
        addChild(content)
        content.view.frame = container.bounds
        container.addSubview(content.view)
        content.didMove(toParent: self)
    }
    
    @IBAction func sideMenuHideButton(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UIView.animate(withDuration: 0.5, delay: 0.0, animations: {
            if sender.isSelected {
                self.splidViewController.self?.preferredDisplayMode = .primaryHidden
                return
            } else {
                self.splidViewController.self?.preferredDisplayMode = .allVisible
            }
        })
    }
}
