//
//  ViewController.swift
//  easyJSONParse
//
//  Created by Goose on 5/17/21.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var btcPrice: NSTextField!
    @IBOutlet weak var btcPercent: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func checkPrice(_ sender: Any) {
        Task {
            let btc = try await BlockchainAPI.getBTCAsync()
            
            let lastTradePrice = btc.lastTradePrice
            let price24H = btc.price24H
            
            let percentChange = (lastTradePrice - price24H) / price24H * 100
            let percentString = String(format: "%.2f", percentChange)
            
            self.btcPrice.stringValue = "$\(lastTradePrice)"
            self.btcPercent.stringValue = "\(percentString) %"
        }
        
//        BlockchainAPI.getBTC { btc, error in
//            guard let btc = btc else { return }
//
//            let lastTradePrice = btc.lastTradePrice
//            let price24H = btc.price24H
//
//            let percentChange = (lastTradePrice - price24H) / price24H * 100
//            let percentString = String(format: "%.2f", percentChange)
//
//            self.btcPrice.stringValue = "$\(lastTradePrice)"
//            self.btcPercent.stringValue = "\(percentString) %"
//        }
    }
    
}

