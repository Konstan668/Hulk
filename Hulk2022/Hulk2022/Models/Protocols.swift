//
//  Protocols.swift
//  Hulk2022
//
//  Created by Konstantin on 22.03.2022.
//

import Foundation
import UIKit

protocol LoginViewDelegate: class {
    func loginView(_ view: LoginView, didTapLoginButton button: UIButton)
}

protocol MainViewDelegate: class {
    func tappedExersisesButton(_ view: MainView, didTap button: UIButton)
    
    func tappedMyProgramsButton(_ view: MainView, didTap button: UIButton )
    
    func tappedStartTrainingButton(_ view: MainView, didTap button: UIButton )
    
}

//protocol NNNViewDelegate: class {
//    <#requirements#>
//}
