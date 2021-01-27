//
//  ViewController.swift
//  ModuloSuporte
//
//  Created by bittencourthiago on 01/27/2021.
//  Copyright (c) 2021 bittencourthiago. All rights reserved.
//

import UIKit
import ModuloSuporte

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let nc = navigationController  {
            nc.pushViewController(FavoritosViewController(), animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

