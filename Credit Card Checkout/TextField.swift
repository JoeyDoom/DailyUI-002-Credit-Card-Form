//
//  TextField.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/20/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class TextField: UITextField {
    
    var card:Bool?
    
    let cardLogo: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "MC-Logo")
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 18).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 30).isActive = true
        return iv
    }()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if card == true {
            self.addSubview(cardLogo)
            cardLogo.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
            cardLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        }
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 8)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 8)
    }


}
