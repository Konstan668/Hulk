//
//  Exersises.swift
//  Hulk2022
//
//  Created by Konstantin on 21.03.2022.
//

import Foundation

struct Exercise{
    let name: String
    var weight: Float?
    var lastWeight: Float?

    
    init(name: String, weight: Float, lastWeight: Float) {
        self.name = name
        self.weight = weight
        self.lastWeight = lastWeight
        
    }
    
}
struct  ExStore {


func returnArr() -> [Exercise]  {
        let ex1 = Exercise(name: "Ex1", weight: 2, lastWeight: 1)
        let ex2 = Exercise(name: "Ex2", weight: 2, lastWeight: 2)
        let ex3 = Exercise(name: "Ex3", weight: 4, lastWeight: 3)

        let exArr = [ex1, ex2,ex3]
    
    return exArr
    }


}



