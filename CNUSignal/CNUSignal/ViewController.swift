//
//  ViewController.swift
//  CNUSignal
//
//  Created by Jinwoo on 17/09/2018.
//  Copyright © 2018 201402343. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func loginBtn(_ sender: Any) {
        Auth.auth().signIn(withEmail: idTextField.text!, password: passwordTextField.text!) { (user, error) in
            if user != nil{
                
                print("login success")
                
            }
                
            else{
                
                print("login fail")
                
            }
        }
    }
    @IBAction func signupBtn(_ sender: Any) {
    }

}
