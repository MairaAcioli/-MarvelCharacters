//
//  HomeTableViewCell.swift
//  MarvelCharacters
//
//  Created by Maíra Preto on 25/08/21.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    var nameLabel: UILabel!
    var imageCharacters: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let screenSize = UIScreen.main.bounds
        let width = screenSize.width
        let height = screenSize.height*0.2
//        20% da tela *0.2
        
        self.imageCharacters = UIImageView(frame: CGRect(x: width*0.05, y: width*0.05, width: height*0.6, height: height*0.9))
        self.imageCharacters.center.y = height/2
        
//        self.imageCharacters.contentMode = .scaleToFill
        
        self.nameLabel = UILabel(frame: CGRect(x: width*0.7, y: 0, width: width*0.3, height: height/2))
        self.nameLabel.center.y = height/2
        
        self.addSubview(nameLabel)
        self.addSubview(imageCharacters)
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
