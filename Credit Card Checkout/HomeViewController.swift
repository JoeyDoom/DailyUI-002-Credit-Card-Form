//
//  HomeViewController.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/20/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = colorSecondary
        setupViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //make some views
    let bgImage: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Background")
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let logoView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Main-Logo")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    let closeButton: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Close-Button")
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.heightAnchor.constraint(equalToConstant: 10).isActive = true
        iv.widthAnchor.constraint(equalToConstant: 10).isActive = true
        return iv
    }()
    
    let cardView: CardView = {
        let cv = CardView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    func setupViews() {
        //bring in the background
        view.addSubview(bgImage)
        bgImage.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 0).isActive = true
        bgImage.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0).isActive = true
        bgImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        bgImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        // bring in the logo
        view.addSubview(logoView)
        logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 24).isActive = true
        logoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        logoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        
        // bring in the close button
        view.addSubview(closeButton)
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 24).isActive = true
        closeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        
        // bring in the card view
        view.addSubview(cardView)
        cardView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 24).isActive = true
        cardView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        cardView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -24).isActive = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
