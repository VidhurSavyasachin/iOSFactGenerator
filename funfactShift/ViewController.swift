//
//  ViewController.swift
//  funfactShift
//
//  Created by Vidhur Savyasachin on 2/4/19.
//  Copyright © 2019 Vidhur Savyasachin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactsLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let facts = ["Ants stretch when they wake up in the morning", "Ostriches can run faster than horses"]
    let factProvider = FactProvider()
    let colorProvider = backgroundColorProvider()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
       
        funFactsLabel.text = factProvider.randomFact()
    }

    @IBAction func showFact() {
         funFactsLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    
}

