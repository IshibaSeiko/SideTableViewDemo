//
//  SideMenuTableViewCell.swift
//  SideTableViewDemo
//
//  Created by STV-M025 on 2019/12/05.
//  Copyright © 2019 STV-M025. All rights reserved.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.textLabel?.text = "テストテスト"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
