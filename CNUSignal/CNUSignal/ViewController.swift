//
//  ViewController.swift
//  CNUSignal
//
//  Created by Jinwoo on 17/09/2018.
//  Copyright © 2018 201402343. All rights reserved.
//

import UIKit
import Firebase
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    @IBAction func loginBtn(_ sender: Any) {
        //로그인 버튼을 눌렀을 때.
        Auth.auth().signIn(withEmail: idTextField.text!, password: passwordTextField.text!) { (user, error) in
            if user != nil{
                print("login success")
               
            }
                
            else{
                print("login fail")
                let alert = UIAlertController(title: "Login Fail alert", message: "Sign-in Failed", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    @IBAction func signupBtn(_ sender: Any) {
        //회원가입 버튼을 눌렀을때. 뷰컨트롤러 바뀌어야함
    }
    @IBAction func signUpDone(_ sender: Any) {
//        Auth.auth().createUser(withEmail: emailTextField.text!, password: pwTextField.text!
//
//        ) { (user, error) in
//
//            if user !=  nil{
//
//                print("register success")
//
//            }
//
//            else{
//
//                print("register failed")
//
//            }
//            
//        }
    }
    //view controller를 얼마나 만들어야할지 물어보기.
    
}
