//
//  ArrayDataSource.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit

typealias TableViewCellConfigureBlock = (_ cell:MyCell, _ item:PersonProtocol) -> Void

class ArrayDataSource: NSObject,UITableViewDataSource {

    var items = Array<PersonProtocol>()
    var identifity:String?
    var configureBlock:TableViewCellConfigureBlock?
    
    
    init(anItems:Array<PersonProtocol>, cellIndentifity:String, configureCellBlock:TableViewCellConfigureBlock?) {
        super.init()
        self.items = anItems
        self.identifity = cellIndentifity
        self.configureBlock = configureCellBlock
    }
    
    
    func itemAtIndexPath(indexPath:IndexPath) -> PersonProtocol{
        return items[indexPath.row]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell
        let item = itemAtIndexPath(indexPath: indexPath)
        configureBlock?(cell, item)
        
        return cell
    }
    
}
