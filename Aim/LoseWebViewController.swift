//
//  LoseWebViewController.swift
//  Aim
//
//  Created by Macbook on 25.05.2021.
//

import UIKit
import WebKit
import SpriteKit

class LoseWebViewController: UIViewController, WKNavigationDelegate {
    
//    var loseUrl: String?
    
    let gameScene = GameScene()
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/")!
        webView.load(URLRequest(url: url))
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        gameScene.restart()
//    }
    

}
