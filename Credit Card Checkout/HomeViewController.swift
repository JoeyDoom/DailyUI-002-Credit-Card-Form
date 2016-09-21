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
    let logoView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Main-Logo")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    
    func setupViews() {
        
        // bring in the logo
        view.addSubview(logoView)
        logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 24).isActive = true
        logoView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        logoView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
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
