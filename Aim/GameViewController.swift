//
//  GameViewController.swift
//  Aim
//
//  Created by Macbook on 24.05.2021.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
//    var urlWinner: String = ""
//    var urlLoser: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
//        performRequest()
        navigationController?.isNavigationBarHidden = true
        if let view = self.view as! SKView? {
            
            if let menu = SKScene(fileNamed: "MainMenuScene") {
                // Set the scale mode to scale to fit the window
                menu.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(menu)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }


    override var prefersStatusBarHidden: Bool {
        return true
    }
    
//    func performRequest() {
//        if let url = URL(string: "https://2llctw8ia5.execute-api.us-west-1.amazonaws.com/prod") {
//            let request = URLRequest(url: url)
//
//            let session = URLSession(configuration: .default)
//
//            let task = session.dataTask(with: request) { data, response, error in
//                if let safeError = error {
//                    print("errors in task: \(safeError)")
//                }
//                if let safeData = data {
//                    self.parseJSON(safeData)
//                }
//                if let httpResponse = response as? HTTPURLResponse {
//                    let statusCode = httpResponse.statusCode
//                    print(statusCode)
//                }
//
//            }
//            task.resume()
//        }
//    }
//
//    func parseJSON(_ data: Data) {
//        let decoder = JSONDecoder()
//        do {
//            var decodedData = try decoder.decode(URLData.self, from: data)
//            decodedData.winner = urlWinner
//            decodedData.loser = urlLoser
//        } catch {
//            print("errors in parsing: \(error)")
//        }
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "win" {
//            let destinationVC = segue.destination as! WinWebViewController
//            destinationVC.winUrl = urlWinner
//        } else if segue.identifier == "lose" {
//            let destinationVC = segue.destination as! LoseWebViewController
//            destinationVC.loseUrl = urlLoser
//        }
//    }
    
    
}
