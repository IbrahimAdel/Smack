//
//  CreateAccountCV.swift
//  SmackApp

import UIKit

class CreateAccountCV: UIViewController {

    //outlets
    @IBOutlet weak var usernameTXT: UITextField!
    @IBOutlet weak var emailTXT: UITextField!
    @IBOutlet weak var passTXT: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    //variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let name = usernameTXT.text, usernameTXT.text != "" else{return}
        guard let email = emailTXT.text, emailTXT.text != "" else{return}
        guard let password = passTXT.text, passTXT.text != "" else{return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if(success){
                print("registered")
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if (success){
                        print("logged in")
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print("Id: \(UserDataService.instance.id)")
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
}
