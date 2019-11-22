//
//  CrayonSelectorVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jaheed Haynes on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonSelectorVC: UIViewController {
    
    @IBOutlet weak var colorSelectionTable: UITableView!
    
    var crayons = [[Crayon]]() {
        didSet {
            colorSelectionTable.reloadData()
        }
    }

    func crayonInfoLoad(){
        crayons = Crayon.colorSections()
       }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorSelectionTable.dataSource = (self as! UITableViewDataSource)
  
        
        
        
        
    }
    
    
    
    
    

}
