//
//  ViewController.swift
//  NeumorphismUI
//
//  Created by Yaffi Azmi on 10/05/21.
//  Copyright © 2021 Yaffi Azmi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let cardView: NeumorphismUIView = {
        let view = NeumorphismUIView()
        return view
    }()
    
    let searchBarField: NeumorphismUITexfield = {
        let textField = NeumorphismUITexfield()
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.9411764706, blue: 1, alpha: 1)
        
        searchBarField.frame = CGRect(x: 24, y: view.frame.height / 2 - 100, width: self.view.frame.width - 48, height: 48)
        searchBarField.layer.cornerRadius = 24
        searchBarField.textFieldPlaceolderLabel.text = "Search something..."
        view.addSubview(searchBarField)
        
        cardView.frame = CGRect(x: 100, y: view.frame.height / 2, width: self.view.frame.width - 200, height: 150)
        cardView.layer.cornerRadius = 8
        view.addSubview(cardView)
    }
}
