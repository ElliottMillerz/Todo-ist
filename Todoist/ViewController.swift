//
//  ViewController.swift
//  Todoist
//
//  Created by Elliott Miller on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var greetLabel: UILabel!
    @IBOutlet weak var backImage: UIImageView!
    
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var noAccGreetLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registrationButton: UIButton!
    
    // test login things
    let exceptedEmail: String = "test@gmail.com"
    let exceptedPass: String = "12345678"
    
    
    //login into account
    @IBAction func loginAction(_ sender: Any) {
        
        if let email = loginField.text,
           let password = passwordField.text{

            if email.contains("@"){
                if password.count > 8{
                    if email == exceptedEmail{
                        if password == exceptedPass{
                            
                        }else{print("Wrong password")}
                    
                    }else{print("Wrong mail")}
            }else{print("Wrong password")}
            }else{print("Must contain '@' in login field")}


    
    
}
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

