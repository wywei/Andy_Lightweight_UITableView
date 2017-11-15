//
//  FirstViewController.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var studentsArrayDataSource: ArrayDataSource?
    
    
    lazy var tableView:UITableView = {
        let tableview = UITableView()
        tableview.delegate = self
        tableview.frame = self.view.bounds
        tableview.register(MyCell.nib(), forCellReuseIdentifier: "MyCell")
        self.view.addSubview(tableview)
        return tableview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    
    func setupTableView() {
    
        let configureCell = {
            (cell:MyCell, item:PersonProtocol) -> Void in
            cell.configureForStudent(student: item)
        }
        
        let dataArr = [Person(name: "zhangsan",sId:"123"), Person(name: "lisi",sId:"456")]
        
        studentsArrayDataSource = ArrayDataSource(anItems: dataArr, cellIndentifity: "MyCell", configureCellBlock: configureCell)
        
        tableView.dataSource = studentsArrayDataSource
    }

}

extension FirstViewController:UITableViewDelegate {
    
    
}
