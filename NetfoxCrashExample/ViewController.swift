//
//  ViewController.swift
//  NetfoxCrashExample
//
//  Created by Trae Robbins on 8/2/21.
//

import UIKit

class ViewController: UIViewController {
    let urlSession = URLSession(configuration: .default)
    private var webSocketTask: URLSessionWebSocketTask!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "wss://echo.websocket.org") else {
            return
        }
        
        webSocketTask = URLSession.shared.webSocketTask(with: url)
        webSocketTask.resume()
    }


}

