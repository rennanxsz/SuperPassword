//
//  PasswordsViewController.swift
//  SuperPassword
//
//  Created by Rennan Bruno on 18/01/22.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    
    @IBOutlet weak var tvPasswords: UITextView!
    

        var numberOfCharacters: Int = 10
        var numberOfPasswords: Int = 1
        var useLetters: Bool!
        var useNumbers: Bool!
        var useCapitalLetters: Bool!
        var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            title = "Total de senhas: \(numberOfPasswords)"
            passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
            generatePasswords()
        }
            
    
    func generatePasswords() {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords{
            tvPasswords.text.append(password + "\n\n")
            print(password)
            print("Foi gerado o password")
        }
    }
    
        
        
        @IBAction func generate(_ sender: Any) {
            generatePasswords()
            
            print("foi chamado o gerador novamente")
        }

}
