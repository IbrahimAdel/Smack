//
//  LoginVC.swift
//  SmackApp


import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTXT: UITextField!
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
        guard let email = emailTXT.text, emailTXT.text != "" else{return}
        guard let password = passTXT.text, passTXT.text != "" else{return}
        AuthService.instance.loginUser(email: email, password: password) { (success) in
            if success{
                AuthService.instance.findUserByEmail(completion: { (success) in
                    NotificationCenter.default.post(name: USER_DATA_CHANGED, object: nil)
                    self.dismiss(animated: true, completion: nil)
                })
            }
        }
    }
    func setupView(){
        emailTXT.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: SmackPurplePlaceholder])
        
        passTXT.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: SmackPurplePlaceholder])
    }
}
