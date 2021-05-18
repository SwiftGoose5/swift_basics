//
//  API.swift
//  easyJSONParse
//
//  Created by Goose on 5/17/21.
//

import Foundation

class BlockchainAPI {
    private static let defaultSession = URLSession(configuration: .default)
    
    static func getBTC(completion: @escaping (Crypto?, String?) -> Void) {
        guard let url = URL(string: "https://api.blockchain.com/v3/exchange/tickers/BTC-USD") else {
            return
        }
        
        defaultSession.cryptoTask(with: url) { (btc, response, error) in
            guard let btc = btc, error == nil else {
                print(error as Any)
                return
            }
            
            DispatchQueue.main.async {
                completion(btc, error?.localizedDescription)
            }
        }.resume()
    }
}
