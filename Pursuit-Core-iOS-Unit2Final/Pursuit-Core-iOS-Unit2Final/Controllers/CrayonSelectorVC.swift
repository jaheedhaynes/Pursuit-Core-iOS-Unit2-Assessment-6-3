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
    
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //colorSelectionTable.dataSource = self
        crayons = Crayon.allTheCrayons
        colorSelectionTable.dataSource = self
    }
    
//    var alpha: CGFloat!
//    var red: CGFloat!
//    var green: CGFloat!
//    var blue: CGFloat!
//
//    var crayon = [[Crayon]]() {
//        didSet {
//            colorSelectionTable.reloadData()
//        }
//    }
//
//    func crayonInfoLoad(){
//        crayons = Crayon.allTheCrayons
//    }
//
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        guard let crayonDetail = segue.destination as?
            SelectedColorValueChangerVC,
            let indexPath = colorSelectionTable.indexPathForSelectedRow
            else {return}
            
            let crayonDetailInfo = crayons[indexPath.row]
            SelectedColorValueChangerVC.crayonDetailInfo = crayonDetailInfo
            
    
//    let crayonDetailInfo = crayons[IndexPath.row]
//    crayonDetail.crayonDetailInfo = crayonDetailInfo
    
    
    }
    
  
        
        
        
    }


extension CrayonSelectorVC: UITableViewDataSource {
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return crayons.count
}


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "crayonSelectionCell", for: indexPath)
    
        let crayon = crayons[indexPath.row]
    
    cell.textLabel?.text = crayon.name
    cell.detailTextLabel?.text = crayon.hex
    
    cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255
        , alpha: 1.0)
    
    return cell
}
}
