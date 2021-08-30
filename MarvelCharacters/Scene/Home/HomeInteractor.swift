//
//  HomeInteractor.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 28/08/21.
//

import Foundation

class HomeInteractor {
    
    var repository: CharactersRepositoryProtocol?
    var presenter: HomePresenterProtocol?
    
    init(repository: CharactersRepositoryProtocol, presenter: HomePresenterProtocol) {
        self.repository = repository
        self.presenter = presenter
    }
    
    
    func fetchCharacters() {
    
     
        repository?.getCharacters(completion: { (result) in
            
            switch result {
            
            case .success(let model):
                let charactersModel: CharactersResponseModel = CharactersResponseModel(response: model)
                self.presenter?.presentSucess(model: charactersModel)
                
            case .failure(_): break
            
                
            
            }
            
            
        })

//            switch result {
//
//            case .sucess(let model):
//                let charactersModel: CharactersModel = CharactersModel(response: model)
//
//            case .failure(_):
//                let responseError = nil
//
//            }
//        })
    }
    
    
}
