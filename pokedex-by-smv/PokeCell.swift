//
//  PokeCell.swift
//  pokedex-by-smv
//
//  Created by Venkatesh SM on 14/03/17.
//  Copyright © 2017 Venkatesh SM. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg : UIImageView!
    @IBOutlet weak var nameLbl  : UILabel!
    
    var pokemon : Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0;
    }
    
    func configureCell(pokemon : Pokemon) {
          self.pokemon = pokemon
          nameLbl.text = self.pokemon.name.capitalized
          thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
    
}
