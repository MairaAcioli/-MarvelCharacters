//
//  CharactersRequest.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 27/08/21.
//

import Foundation
import CryptoKit
import Combine

class CharactersRequest {
    
    
    func getCharacters() {
        
        let publicKey = "0e4f406e2004a1e0cbd2c847152af817"
        let privateKey = "52f02ea1a958ff1b342366eea8f83f1a79e09046"
        let ts = String(Date().timeIntervalSince1970)
        let hash = MD5(data: "\(ts)\(privateKey)\(publicKey)")
        let url: String = "https://gateway.marvel.com:443/v1/public/characters?ts=\(ts)&apikey=\(publicKey)&hash=\(hash)"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
            if let error = err {
                print(error.localizedDescription)
                return
            }
            
            guard let APIData = data else {
               return print("no data found")
            }
            
            do {
                
            }
        }
        
    }
    
    func MD5(data: String) -> String {
        let hash = Insecure.MD5.hash(data: data.data(using: .utf8) ?? Data())
        
        return hash.map {
            String(format: "%02hhx", $0)
        }
        .joined()
    }
}


