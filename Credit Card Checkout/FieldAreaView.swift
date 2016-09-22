//
//  FieldAreaView.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/20/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class FieldAreaView: UIView {
    
    var title: String?
    var placeholder: String?
    var card: Bool?
    
    lazy var textField: TextField = {
        let tf = TextField()
        tf.textColor = colorSecondary
        tf.layer.borderColor = colorBorders.cgColor
        tf.layer.cornerRadius = 4
        tf.layer.borderWidth = 1
        tf.font = fontLight
        if self.card == true {
            tf.card = true
        }
        tf.text = self.placeholder
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return tf
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = self.title
        label.font = fontBoldSmall
        label.textColor = colorSecondary
        label.frame = label.frame.integral
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 16).isActive = true
        return label
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.addSubview(label)
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        label.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        
        self.addSubview(textField)
        textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 4).isActive = true
        textField.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        textField.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        
    }

}
