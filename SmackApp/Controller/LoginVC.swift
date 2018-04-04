//
//  LoginVC.swift
//  SmackApp


import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var usernameTXT: UITextField!
    @IBOutlet weak var passTXT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    @IBAction func loginPressed(_ sender: Any) {
        guard let username = usernameTXT.text, usernameTXT.text != "" else{return}
        guard let password = passTXT.text, passTXT.text != "" else{return}
        
        AuthService.instance.loginUser(email: username, password: password) { (success) in
            if(success){
                print("Logged in User!")
            }
        }
    }
    
}
