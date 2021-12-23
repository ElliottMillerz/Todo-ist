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
    let exceptedPass: String = "123456789"
    
   
    
    @IBAction func loginAction(_ sender: Any) {
    }
    //login into account
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier != "fromLoginToTaskList"{
            return true
        }
        if let email = loginField.text,
           let password = passwordField.text{

            if email.contains("@"){
                if password.count > 8{
                    if email == exceptedEmail{
                        if password == exceptedPass{
                            print("Success")
                            return true;
                            
                        }else{print("Wrong password")}
                    
                    }else{print("Wrong mail")}
            }else{print("Wrong password")}
            }else{print("Must contain '@' in login field")}
            return false;
    }
    
        return true;
}
}

    // registration logic



//class TaskListViewController: UIViewController{
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        navigationController?.navigationBar.isHidden = true
//    }
//
//}


