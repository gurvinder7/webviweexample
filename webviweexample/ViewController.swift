//
//  ViewController.swift
//  webviweexample
//
//  Created by gurvinder mangat on 2019-03-18.
//  Copyright © 2019 gurvinder mangat. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFromString()
        //loadfromWeb()
       // loadurl()
       
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    func loadfromWeb()   {
         let url = URL(string: "https://www.google.com")
        
        let urlReq = URLRequest(url: url!)
        myWebView.load(urlReq)
    }
    func loadFromString() {
        let htmlStr = "<h1>hello World</h1>"
        myWebView.loadHTMLString(htmlStr, baseURL: nil)
        
    }
    func loadurl(){
         let localfilePath = Bundle.main.url(forResource: "home", withExtension: "html")
        // let url = URL(string: "https://www.google.com")
        
        let urlReq = URLRequest(url: localfilePath!)
        myWebView.load(urlReq)
        
    }

}

