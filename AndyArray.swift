//
//  AndyArray.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit


class AndyArray<T> where T:PersonProtocol {

    var objHistoryArray = Array<T>()
    
    func addObject(obj:T) {
        objHistoryArray.append(obj)
    }
    
    func getCount() -> Int {
        return objHistoryArray.count
    }
    
}
