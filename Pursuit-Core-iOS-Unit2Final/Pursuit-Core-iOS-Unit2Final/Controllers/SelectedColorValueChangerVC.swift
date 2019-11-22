//
//  SelectedColorValueChangerVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jaheed Haynes on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SelectedColorValueChangerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    var crayon: Crayon?
    
    
    func colorSegueAction() {
        guard let colorTextName = crayon
            else{
            fatalError("something is wrong")
        }
        
        navigationItem.title = colorTextName.name
       
        
    }
    


}
