//
//  SuccessViewController.swift
//  Credit Card Checkout
//
//  Created by Joey Gordon on 9/21/16.
//  Copyright © 2016 Joey Gordon. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 16, y: 16, width: 80, height: 80)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .clear
        view.addSubview(closeButton)
        closeButton.addTarget(self, action: #selector(handleClose), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleClose() {
        dismiss(animated: true, completion: nil)
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
