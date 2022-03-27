//
//  StartView.swift
//  Hulk2022
//
//  Created by Konstantin on 22.03.2022.
//

import Foundation
import UIKit

class LoginView: View {
    
    weak var delegate: LoginViewDelegate?

    
    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .green
        textField.placeholder = "Email adress"
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .green
        textField.placeholder = "Password"
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .green
        button.setTitle("LogIn", for: .normal)
        return button
    }()
    
    override func setViews() {
        super.setViews()
        backgroundColor = .red
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(didTapLoginButton(_:)), for: .touchUpInside)
        print("SelfVVVVVV", self.frame)
    }
    
    override func layoutView() {
        
        let constraints = [
            emailTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            self.rightAnchor.constraint(equalTo: emailTextField.rightAnchor, constant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            self.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor, constant: 50),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 100),
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 150),
            self.rightAnchor.constraint(equalTo: loginButton.rightAnchor, constant: 150),
            
            
        ]
        
        self.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)

    }
    }


private extension LoginView{
    @objc func didTapLoginButton(_ button: UIButton) {
        delegate?.loginView(self, didTapLoginButton: button)
    }
}
