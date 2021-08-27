//
//  CharactersResponse.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 27/08/21.
//

import Foundation

struct CharactersResult: Codable {
    
    var data: CharactersData
}

struct CharactersData: Codable {
   
    var count: Int
    var result: [CharactersResponse]
    
}

struct CharactersResponse: Identifiable, Codable {
    
    var id: Int
    var name: String
    var description: String
    var thumbnail: [String:String]
    var urls: [[String:String]]
}
