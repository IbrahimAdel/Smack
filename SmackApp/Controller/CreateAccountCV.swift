//
//  CreateAccountCV.swift
//  SmackApp

import UIKit

class CreateAccountCV: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
