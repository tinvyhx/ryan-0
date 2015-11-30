//
//  WebViewController.swift
//  Ryan
//
//  Created by 谭魏 on 15/11/25.
//  Copyright © 2015年 victor. All rights reserved.
//

import UIKit

class WebViewController: BaseViewController , UIWebViewDelegate {

    internal var web_address :String!
    var web_view :UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        web_view = UIWebView(frame: self.view.frame)
        web_view.scalesPageToFit = true
        self.view = web_view
        
        web_view.scrollView.mj_header = MJRefreshNormalHeader(refreshingBlock: {() in
            self.web_view.reload()
        })
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        web_view.scrollView.mj_header.endRefreshing()
    }
    /*!
    - parameter animated:
    */
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(false)
        self.view.frame=CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20)
    }
    
    func loadWeb(){
        web_address = APP_Http + web_address
        web_view.loadRequest(NSURLRequest(URL: NSURL(string: web_address)!))
        web_view.delegate=self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
