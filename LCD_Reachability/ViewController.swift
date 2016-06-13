//
//  ViewController.swift
//  LCD_Reachability
//
//  Created by 刘才德 on 16/6/13.
//  Copyright © 2016年 iexbuy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        if !Reachability.netWorkIsOk() {
//            let aler = UIAlertView.init(title: "亲！当前网络未连接！", message: nil, delegate: nil, cancelButtonTitle: "确定")
//            aler.show()
//            
//        }
        
        
        
        if Reachability.netWorkType() == .WIFI {
            let aler = UIAlertView.init(title: "连接类型：WIFI", message: nil, delegate: nil, cancelButtonTitle: "确定")
            aler.show()
            
        }
        
        if Reachability.netWorkType() == .WWAN {
            let aler = UIAlertView.init(title: "连接类型：蜂窝数据", message: nil, delegate: nil, cancelButtonTitle: "确定")
            aler.show()
        }
        
        if Reachability.netWorkType() == .NONE {
            let aler = UIAlertView.init(title: "当前网络未连接", message: nil, delegate: nil, cancelButtonTitle: "确定")
            aler.show()
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

