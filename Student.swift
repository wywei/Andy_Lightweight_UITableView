//
//  Student.swift
//  Andy_Lightweight_UITableView
//
//  Created by Andy on 2017/8/14.
//  Copyright © 2017年 wangyawei. All rights reserved.
//

import UIKit

class Student: PersonProtocol {

    var name:String?
    var s_id:String?
    
    init(name:String?, sId:String?) {
        self.name = name
        self.s_id = sId
    }
    
}
