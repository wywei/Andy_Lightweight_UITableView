//
//  MyCell.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var txtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCell", bundle: nil)
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        if highlighted {
            txtLabel.shadowColor = UIColor.red
            txtLabel.shadowOffset = CGSize(width: 3, height: 3)
        } else {
            txtLabel.shadowColor = nil
        }
    }

}


extension MyCell {
    
    func configureForStudent(student:PersonProtocol) {
        txtLabel.text = (student as! Person).name
    }
    
}

