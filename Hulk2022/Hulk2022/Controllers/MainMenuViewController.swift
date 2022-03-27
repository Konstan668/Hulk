//
//  MainMenuViewController.swift
//  Hulk2022
//
//  Created by Konstantin on 20.03.2022.
//

import Foundation
import UIKit

class MainMenuViewController: ViewController<MainView> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
    }

    
    @objc private func buttonAction(sender: UIButton) {
        let exVC = ExersizeViewController()
        exVC.title = "Ex"

        self.navigationController?.pushViewController(exVC, animated: true)
        
        
    }
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
    
}

extension MainMenuViewController: MainViewDelegate {
    func tappedExersisesButton(_ view: MainView, didTap button: UIButton) {
        print("didTappedExersisesButton")
    }
    
    func tappedMyProgramsButton(_ view: MainView, didTap button: UIButton) {
        print("didTappedMyProgramsButton")
    }
    
    func tappedStartTrainingButton(_ view: MainView, didTap button: UIButton) {
        print("didTappedStartTrainingButton")
    }
    

    
    
    
}




