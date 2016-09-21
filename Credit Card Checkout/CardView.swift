//
//  CardView.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/20/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    
    let topBar: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = colorPrimary
        iv.image = #imageLiteral(resourceName: "Product-Background")
        iv.contentMode = .center
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let productImage: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Product-Image")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 177).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 138).isActive = true
        return iv
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = colorWhite
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        
        self.addSubview(topBar)
        topBar.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        topBar.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        topBar.heightAnchor.constraint(equalToConstant: 100).isActive = true
        topBar.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        
        self.addSubview(productImage)
        productImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        productImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 40).isActive = true
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
