//
//  CreateAccountCV.swift
//  SmackApp

import UIKit

class CreateAccountCV: UIViewController {

    @IBOutlet weak var emailTXT: UITextField!
    @IBOutlet weak var passTXT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTXT.text, emailTXT.text != "" else{return}
        guard let password = passTXT.text, passTXT.text != "" else{return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if(success){
                print("Registered User!")
                AuthService.instance.loginUser(email: email, password: password, completion: { (success2) in
                    if (success2){
                        print("Logged in User!")
                    }
                })
            }
        }
    }
    
}
