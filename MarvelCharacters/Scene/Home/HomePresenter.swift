//
//  HomePresenter.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 28/08/21.
//

import Foundation

protocol HomePresenterProtocol {
    func presentSucess(model: CharactersResponseModel)
}

class HomePresenter: HomePresenterProtocol {
    
    var viewController: HomeViewControllerProtocol?
    init(viewController: HomeViewControllerProtocol) {
        self.viewController = viewController
    }
    
    func presentSucess(model: CharactersResponseModel) {
        self.viewController?.presentCharacters(model: model)
    }
    
    
}
