//
//  CardView.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/20/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit
class CardView: UIView {
    
    var parentController: HomeViewController?
    
    var heightSpot: NSLayoutConstraint?
    
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
        iv.heightAnchor.constraint(equalToConstant: 182).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 143).isActive = true
        return iv
    }()
    
    let payButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = colorPrimary
        button.setTitle("PAY $110.00", for: .normal)
        button.setTitleColor(colorWhite, for: .normal)
        button.titleLabel?.font = fontBold
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        return button
    }()
    
    let successButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.alpha = 0
        button.isUserInteractionEnabled = false
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPageIndicatorTintColor = colorSecondary
        pc.pageIndicatorTintColor = colorBorders
        pc.numberOfPages = 2
        pc.currentPage = 2
        pc.translatesAutoresizingMaskIntoConstraints = false
        return pc
    }()
    
    let productTitle: UILabel = {
        let label = UILabel()
        label.text = "Foldsack No. 1"
        label.font = fontBold
        label.textColor = colorSecondary
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return label
    }()
    
    let productColor: UILabel = {
        let label = UILabel()
        label.text = "Red"
        label.textColor = colorPrimary
        label.font = fontBold
        label.translatesAutoresizingMaskIntoConstraints = false
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return label
    }()
    
    let separatorBar: UIView = {
        let view = UIView()
        view.backgroundColor = colorBorders
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return view
    }()
    
    let nameField: FieldAreaView = {
        let tf = FieldAreaView()
        tf.title = "NAME ON CARD"
        tf.placeholder = "Joey Gordon"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return tf
    }()
    
    let cardField: FieldAreaView = {
        let tf = FieldAreaView()
        tf.title = "CARD NUMBER"
        tf.placeholder = "1234 5678 9012 3456"
        tf.card = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return tf
    }()
    
    let dateField: FieldAreaView = {
        let tf = FieldAreaView()
        tf.title = "MM/YY"
        tf.placeholder = "11/19"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return tf
    }()
    
    let cvcField: FieldAreaView = {
        let tf = FieldAreaView()
        tf.title = "CVC"
        tf.placeholder = "311"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return tf
    }()
    
    let zipField: FieldAreaView = {
        let tf = FieldAreaView()
        tf.title = "ZIP"
        tf.placeholder = "97214"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return tf
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
        
        self.addSubview(payButton)
        payButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        payButton.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        payButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        payButton.addTarget(self, action: #selector(payAction), for: .touchUpInside)
        
        self.addSubview(pageControl)
        pageControl.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        pageControl.heightAnchor.constraint(equalToConstant: 16).isActive = true
        pageControl.bottomAnchor.constraint(equalTo: payButton.topAnchor, constant: -16).isActive = true
        
        self.addSubview(productTitle)
        productTitle.topAnchor.constraint(equalTo: topBar.bottomAnchor, constant: 24).isActive = true
        productTitle.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 10).isActive = true
        productTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        
        self.addSubview(productColor)
        productColor.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 0).isActive = true
        productColor.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 10).isActive = true
        productColor.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        
        self.addSubview(separatorBar)
        separatorBar.topAnchor.constraint(equalTo: productColor.bottomAnchor, constant: 24).isActive = true
        separatorBar.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 10).isActive = true
        separatorBar.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        
        buildForm()
        
        self.addSubview(successButton)
        successButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        successButton.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        successButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        heightSpot = successButton.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -48)
        heightSpot?.isActive = true
        
    }
    
    
    func buildForm() {
        self.addSubview(nameField)
        nameField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        nameField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        nameField.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: 16).isActive = true
        
        self.addSubview(cardField)
        cardField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        cardField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        cardField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 16).isActive = true
        
        self.addSubview(dateField)
        dateField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        dateField.widthAnchor.constraint(equalToConstant: (self.frame.width - 64) / 3).isActive = true
        dateField.topAnchor.constraint(equalTo: cardField.bottomAnchor, constant: 16).isActive = true
        
        self.addSubview(cvcField)
        cvcField.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        cvcField.widthAnchor.constraint(equalToConstant: (self.frame.width - 64) / 3).isActive = true
        cvcField.topAnchor.constraint(equalTo: cardField.bottomAnchor, constant: 16).isActive = true
        
        self.addSubview(zipField)
        zipField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        zipField.widthAnchor.constraint(equalToConstant: (self.frame.width - 64) / 3).isActive = true
        zipField.topAnchor.constraint(equalTo: cardField.bottomAnchor, constant: 16).isActive = true
    }
    
    func payAction() {
        UIView.animate(withDuration: 0.2) { 
            self.successButton.alpha = 1
        }
        
        UIView.animate(withDuration: 0.6, delay: 0.3, options: .curveEaseInOut, animations: {
            self.heightSpot?.constant -= self.frame.height + 48
            self.layoutIfNeeded()
        }) { (completedAnimation) in
//            self.parentController?.dismissCard()
        }
        UIView.animate(withDuration: 0.2, delay: 1.8, options: .curveEaseIn, animations: {
            self.frame.origin.y = (self.parentController?.view.frame.maxY)!
            self.layoutIfNeeded()
            }, completion: nil)
    }

}
