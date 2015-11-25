//
//  ThirdViewController.swift
//  Ryan
//
//  Created by 谭魏 on 15/11/25.
//  Copyright © 2015年 victor. All rights reserved.
//

import UIKit

class ThirdViewController: WebViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.tabBarItem.title = "个人中心"
        self.tabBarItem.image = UIImage(named: "first")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        web_address = Personal_Center
        loadWeb()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
