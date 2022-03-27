//
//  Classes.swift
//  Hulk2022
//
//  Created by Konstantin on 22.03.2022.
//

import Foundation
import UIKit

class View: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setViews()
        layoutView()
    }
    
    required init?(coder adecoder: NSCoder) {
        super.init(coder: adecoder)
        setViews()
        layoutView()
    }
    
    func setViews() {
        backgroundColor = .blue
    }
    
    func layoutView() {
        
    }
    
}

class ViewController<V:View>: UIViewController {
    
    override func loadView() {
        self.view = V()
        print("1111 loadview ", view.bounds)
    }
    
    var customView: V {
        return self.view as! V
    }
    
}
