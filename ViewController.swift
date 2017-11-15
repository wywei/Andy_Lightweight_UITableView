//
//  ViewController.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func didClickedPushButton(_ sender: UIButton) {
        self.navigationController?.pushViewController(FirstViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

