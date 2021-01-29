//
//  FavoritosViewModel.swift
//  ModuloSuporte
//
//  Created by Thiago Bittencourt Coelho on 29/01/21.
//

import Foundation

class FavoritosViewModel {

    var defaults = UserDefaults.standard
    var arrayDeMoedasFavoritas:[[String:Any]] = [[:]]
    var arrayDeCelulas:[MoedasFavoritasCollectionViewCell] = []
    
    func geraArrayCelulas(moedas:[[String:Any]], collectionView:UICollectionView) {
        
        if let favoritos = UserDefaults.standard.value(forKey: "favoritos") as? [String] {
            print(favoritos)
            for moeda in moedas {
                if let id = moeda["id"] as? String {
                    if favoritos.contains(id) {
                        arrayDeMoedasFavoritas.append(moeda)
                    }
                }
            }
            
        } else {
            print("Vazio")
        }
        for moedaFavorita in arrayDeMoedasFavoritas {
            
            arrayDeCelulas.append(MoedasFavoritasCollectionViewCell(moedaFavorita, frame: .null))
            
            
        }
        collectionView.reloadData()
        
    }
    
}
