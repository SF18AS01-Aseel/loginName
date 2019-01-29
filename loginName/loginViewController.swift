//
//  loginViewController.swift
//  loginName
//
//  Created by Aseel Alshohatee on 1/28/19.
//  Copyright © 2019 Aseel Alshohatee. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
     //MARK: - Navigation

//   //  In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         Get the new view controller using segue.destination.
//         Pass the selected object to the new view controller.
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender);
        
        if let viewController: ViewController = segue.destination as? ViewController {
            if let text: String = textField.text {
                //Transmit information from the LoginViewController to the ViewController.
                viewController.loginName = text;
            }
        }
    }
    @IBAction func returnButtonPressed(_ sender: UITextField) {
        sender.resignFirstResponder();   //Dismiss the UITextField's keyboard.
    }
    
}
