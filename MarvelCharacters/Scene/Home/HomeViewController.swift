//
//  HomeViewController.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 25/08/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var charactersListTableView = UITableView()
    
    var repository = CharactersRepository()
    
    var arrayTeste = [MarvelModel(name: "teste1", image: UIImage(named: "teste1")!), MarvelModel(name: "teste1", image: UIImage(named: "teste1")!), MarvelModel(name: "teste2", image: UIImage(named: "teste2")!), MarvelModel(name: "teste2", image: UIImage(named: "teste2")!)]
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        repository.getCharacters()
//        testeRequest.getCharacters { [weak self] array in
//            if let arrayStatement = array {
//
//            }
//        }
        
        
        setupNavigationBar()
        setupConstraints()
        
     
        self.view.addSubview(charactersListTableView)
        
        self.charactersListTableView.delegate = self
        self.charactersListTableView.dataSource = self
        
        self.charactersListTableView.register(HomeTableViewCell.self, forCellReuseIdentifier: "HomeTableViewCell")
     
    }
    
    func setupConstraints() {

        charactersListTableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)

    }
    
    
    func setupNavigationBar() {
        
        navigationItem.title = "Marvel Characters"
        guard let navBar = navigationController?.navigationBar else {return}
        navBar.barTintColor = .systemPink
        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrayTeste.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        
        cell.imageCharacters.image = self.arrayTeste[indexPath.row].image
        cell.nameLabel.text = self.arrayTeste[indexPath.row].name
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return self.view.frame.height*0.2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


