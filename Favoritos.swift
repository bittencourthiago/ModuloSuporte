//
//  Favoritos.swift
//  Favoritos
//
//  Created by Thiago Bittencourt Coelho on 27/01/21.
//

import Foundation

public class Favoritos {
    var navigationController:UINavigationController
    var tabBar:UITabBar
    
    public init(navigationController:UINavigationController, tabBar:UITabBar) {
        self.tabBar = tabBar
        self.navigationController = navigationController
        
    }
    public func abrirFavoritos() {
        let favoritos = FavoritosViewController()
        favoritos.tabBar = tabBar
        
        navigationController.pushViewController(favoritos, animated: true)
    }
}
