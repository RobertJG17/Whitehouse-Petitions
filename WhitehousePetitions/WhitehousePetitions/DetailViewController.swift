//
//  DetailViewController.swift
//  WhitehousePetitions
//
//  Created by Robert Guerra on 7/23/20.
//  Copyright © 2020 Robert Guerra. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    var webView: WKWebView!
    var detailItem: Petition?
    
    // MARK: - Lifecycle
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let detailItem = detailItem else { return }
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        \(detailItem.body)
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
    

}
