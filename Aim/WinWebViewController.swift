//
//  WebViewController.swift
//  Aim
//
//  Created by Macbook on 25.05.2021.
//

import UIKit
import WebKit
import SpriteKit

class WinWebViewController: UIViewController, WKNavigationDelegate {
    
//    var winUrl: String?
    
    let gameScene = GameScene()
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let safeUrl = winUrl {
//            let url = URL(string: safeUrl)
//            webView.load(URLRequest(url: url!))
//        }
//        print(winUrl)
        
        let url = URL(string: "https://www.google.com.ua/")
        if let safeUrl = url {
            webView.load(URLRequest(url: safeUrl))
        }
        
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        gameScene.restart()
//        print("viewDidDisappear")
//    }
    
}
