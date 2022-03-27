//
//  MainView.swift
//  Hulk2022
//
//  Created by Konstantin on 22.03.2022.
//

import Foundation
import UIKit

class MainView: View {
    
    weak var delegate: MainViewDelegate?
    
    private lazy var exercisesButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Button1", for: .normal)
   
        return button
        
    }()
    
    private lazy var myProgramsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Button2", for: .normal)
        return button
        
    }()
    
    private lazy var startTrainingButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Button3", for: .normal)
        return button
        
    }()
    
    private lazy var exitNavigationBarItem: UINavigationItem = {
        let button = UINavigationItem()
        return button
    }()
    
    override func setViews() {
        super.setViews()
        backgroundColor = .blue
        addSubview(exercisesButton)
        addSubview(myProgramsButton)
        addSubview(startTrainingButton)
        
        exercisesButton.addTarget(self, action: #selector(didTappedExersisesButton(_:)), for: .touchUpInside ) 
        myProgramsButton.addTarget(self, action: #selector(didTappedMyProgramsButton(_:)), for: .touchUpInside)
        startTrainingButton.addTarget(self, action: #selector(didTappedStartTrainingButton(_:)), for: .touchUpInside)
    }
    
    
    override func layoutView() {
    
        let constraints = [
            exercisesButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            exercisesButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            self.rightAnchor.constraint(equalTo: exercisesButton.rightAnchor, constant: 50),
            
            myProgramsButton.topAnchor.constraint(equalTo: exercisesButton.bottomAnchor, constant: 50),
            myProgramsButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            self.rightAnchor.constraint(equalTo: myProgramsButton.rightAnchor, constant: 50),
            
            startTrainingButton.topAnchor.constraint(equalTo: myProgramsButton.bottomAnchor, constant: 50),
            startTrainingButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50),
            self.rightAnchor.constraint(equalTo: startTrainingButton.rightAnchor, constant: 50),
            

        ]
        
        self.translatesAutoresizingMaskIntoConstraints = false
        exercisesButton.translatesAutoresizingMaskIntoConstraints = false
        myProgramsButton.translatesAutoresizingMaskIntoConstraints = false
        startTrainingButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
        
        
    }
}

private extension MainView {
    @objc func didTappedExersisesButton(_ button: UIButton){
        delegate?.tappedExersisesButton(self, didTap: button )
    }
    
    @objc func didTappedMyProgramsButton(_ button: UIButton){
        delegate?.tappedMyProgramsButton(self, didTap: button )
    }
    
    @objc func didTappedStartTrainingButton(_ button: UIButton){
        delegate?.tappedStartTrainingButton(self, didTap: button)
    }
    
}
