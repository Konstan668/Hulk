//
//  ExersizeViewController.swift
//  Hulk2022
//
//  Created by Konstantin on 21.03.2022.
//

import Foundation
import UIKit

class ExersizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let one = ExStore()

    
    
    var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.frame = view.frame
        view.addSubview(tableView)
        view.backgroundColor = .blue
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var exercisesArray: [Exercise] = one.returnArr()
        print("Arraaarr = ", exercisesArray)
        return exercisesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ExercisesCell()
        cell.backgroundColor = .green
        
        return cell
    }

}
