//
//  CharactersRepository.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 29/08/21.
//

import Foundation
import Combine

class CharactersRepository {
    
    let request = CharactersRequest()
    
    
    func getCharacters() {
        
        let urlRequest = request.url
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: URL(string: urlRequest)!, completionHandler: { (data, response, error) in
            
            guard let APIData = data else {return}
            if let jsonObjeto = self.parseData(rawData: APIData){
                
            }
        })
        
        task.resume()
    }
    
    
    typealias StringObjectArrayDataFormat = [String : Any]
    
    
    func parseData(rawData: Data) -> StringObjectArrayDataFormat? {
        
        do {
            if let json = try JSONSerialization.jsonObject(with: rawData as Data, options: JSONSerialization.ReadingOptions.allowFragments) as? StringObjectArrayDataFormat {
                return json
                
            } else {
                print("cannot serialize data returned in especified format")
            }
        } catch let error as NSError {
            print(error.description)
        }
        
        return nil
    }
}

