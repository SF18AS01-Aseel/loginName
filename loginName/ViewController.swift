//
//  ViewController.swift
//  loginName
//
//  Created by Aseel Alshohatee on 1/28/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //in the file ViewController.swift
    
    var loginName: String?; //will hold information that will come from LoginViewController
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Get the information transmitted from the LoginViewController to the ViewController.
        
        if let loginName: String = loginName {
            label.text = "Welcome, \(loginName).";
        }
    }


}

