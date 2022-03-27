//
//  SturtViewController.swift
//  Hulk2022
//
//  Created by Konstantin on 20.03.2022.
//

import Foundation
import UIKit

class StartViewController: ViewController<LoginView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
    }
//    override func loadView() {
//        self.view = LoginView()
//    }
}

extension StartViewController : LoginViewDelegate {
    
    func loginView(_ view: LoginView, didTapLoginButton button: UIButton) {
        
        let mainVC = MainMenuViewController()
        let nc = UINavigationController(rootViewController: mainVC)
        
        mainVC.title = "Main"
        
        nc.modalPresentationStyle = .fullScreen
        self.present(mainVC, animated: true)
    }
    
    
}
