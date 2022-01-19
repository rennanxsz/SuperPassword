//
//  PasswordsViewController.swift
//  SuperPassword
//
//  Created by Rennan Bruno on 18/01/22.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    
    @IBOutlet weak var tsTotalPasswords: UITextView!
    

        var numerOfCharacters: Int = 10
        var numberOfPasswords: Int = 1
        var useLetters: Bool!
        var useNumbers: Bool!
        var useCapitalLetters: Bool!
        var useSpecialCharacters: Bool!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
        
            
        }
    
        
        
        @IBAction func generate(_ sender: Any) {
            
        }

    
}
