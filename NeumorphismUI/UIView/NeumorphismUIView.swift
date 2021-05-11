//
//  NeumorphismUIView.swift
//  NeumorphismUI
//
//  Created by Yaffi Azmi on 12/05/21.
//  Copyright © 2021 Yaffi Azmi. All rights reserved.
//

import UIKit

class NeumorphismUIView: UIView {
    
    let containerLightShadow = CALayer()
    let textFieldDarkShadow = CALayer()
    
    lazy var textFieldContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var textField: UITextField = {
        let field = UITextField()
        field.textColor = .black
        field.autocorrectionType = .no
        return field
    }()
    
    lazy var textFieldPlaceolderLabel: UILabel = {
        let text = UILabel()
        text.textColor = .lightGray
        text.text = "Type something..."
        return text
    }()
    
    
 
    private func setupView() {
        layer.masksToBounds = false
        backgroundColor = UIColor(red: 231, green: 240, blue: 255, alpha: 1)
        layer.shadowColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowOpacity = 0.2
        
        layer.insertSublayer(containerLightShadow, at: 0)
//        textFieldContainerView.layer.insertSublayer(textFieldDarkShadow, at: 0)
//
//        addSubview(textFieldContainerView)
//        textField.isUserInteractionEnabled = true
//        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
//
//        textFieldContainerView.addSubview(textField)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerLightShadow.frame = bounds
        containerLightShadow.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.9411764706, blue: 1, alpha: 1)
        containerLightShadow.shadowColor = CGColor(srgbRed: 255, green: 255, blue: 255, alpha: 1)
        containerLightShadow.cornerRadius = layer.cornerRadius
        containerLightShadow.shadowOffset = CGSize(width: -5, height: -5)
        containerLightShadow.shadowOpacity = 1.0
        containerLightShadow.shadowRadius = 5
        
//        textFieldContainerView.frame = CGRect(x: 8, y: 8, width: frame.width - 16, height: frame.height - 16)
//        textFieldContainerView.layer.masksToBounds = false
//        textFieldContainerView.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.9411764706, blue: 1, alpha: 1)
//        textFieldContainerView.layer.cornerRadius = textFieldContainerView.frame.height / 2
//        textFieldContainerView.layer.shadowColor = UIColor.white.cgColor
//        textFieldContainerView.layer.shadowRadius = 5
//        textFieldContainerView.layer.shadowOffset = CGSize(width: 5, height: 5)
//        textFieldContainerView.layer.shadowOpacity = 1.0
//
//        textFieldDarkShadow.frame = textFieldContainerView.bounds
//        textFieldDarkShadow.backgroundColor = #colorLiteral(red: 0.9058823529, green: 0.9411764706, blue: 1, alpha: 1)
//        textFieldDarkShadow.shadowColor = UIColor.black.cgColor
//        textFieldDarkShadow.cornerRadius = textFieldContainerView.layer.cornerRadius
//        textFieldDarkShadow.shadowOffset = CGSize(width: -5, height: -5)
//        textFieldDarkShadow.shadowOpacity = 0.2
//        textFieldDarkShadow.shadowRadius = 5
//
//        textField.frame = CGRect(x: 16, y: 0, width: textFieldContainerView.frame.width - 32, height: textFieldContainerView.frame.height)
//        textField.backgroundColor = .clear
//        textField.font = .systemFont(ofSize: 14)
//
//        textFieldPlaceolderLabel.frame = CGRect(x: 0, y: 0, width: textField.frame.width, height: textField.frame.height)
//        textFieldPlaceolderLabel.font = .systemFont(ofSize: 14)
//        textField.addSubview(textFieldPlaceolderLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
//        textFieldPlaceolderLabel.isHidden = textField.text != ""
    }
}

