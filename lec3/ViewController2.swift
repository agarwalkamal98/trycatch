//
//  ViewController2.swift
//  lec3
//
//  Created by ADMIN on 13/02/21.
//

import UIKit
import WebKit

class ViewController2: UIViewController,WKUIDelegate,WKNavigationDelegate {

    @IBOutlet weak var webV: WKWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    let url = URL(string: "https://www.google.com")
        
        let urlReq = URLRequest(url: url!)
        
        webV.load(urlReq)
        
        webV.uiDelegate = self
        webV.navigationDelegate = self
        
        
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!){
        actInd.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!){
        actInd.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error){
        print("fail\(error.localizedDescription)")
        actInd.stopAnimating()
    }
    
}
