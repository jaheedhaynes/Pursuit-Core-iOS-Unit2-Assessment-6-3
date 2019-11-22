//
//  SelectedColorValueChangerVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jaheed Haynes on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SelectedColorValueChangerVC: UIViewController {
    
    @IBOutlet weak var colorNameInCCView: UILabel!
    
    @IBOutlet var crayonColorBox: UIView!
    
    @IBOutlet weak var redValueLabelSlider: UILabel!
    @IBOutlet weak var redValueChangerSlider: UISlider!
    
    @IBOutlet weak var greenValueLabelSlider: UILabel!
    @IBOutlet weak var greenValueChangerSlider: UISlider!
    
    @IBOutlet weak var blueValueLabelSlider: UILabel!
    @IBOutlet weak var blueValueChangerSlider: UISlider!
    
    @IBOutlet weak var alphaValueLabelStepper: UILabel!
    @IBOutlet weak var alphaValueChangerStepper: UIStepper!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    var crayonDetailInfo: Crayon?
    
    func stepperValue() {
        
        alphaValueChangerStepper.minimumValue = 0.0
        alphaValueChangerStepper.maximumValue = 1.0
        alphaValueChangerStepper.value = 1.0
        alphaValueChangerStepper.stepValue = 0.1
        
    }
    
func updateCrayon () {
        colorNameInCCView.text = crayonDetailInfo?.name
        crayonColorBox.backgroundColor = UIColor(displayP3Red: CGFloat(crayonDetailInfo?.red ?? 255)/255, green: CGFloat(crayonDetailInfo?.green ?? 255)/255, blue: CGFloat(crayonDetailInfo?.blue ?? 255)/255, alpha: 1.0)
        
        redValueLabelSlider.text = "RED: \(Float((crayonDetailInfo?.red ?? 255)/255).description)"
        redValueChangerSlider.setValue(Float((crayonDetailInfo?.red ?? 255)/255), animated: true)
        
        greenValueLabelSlider.text = "GREEN: \(Float((crayonDetailInfo?.green ?? 255)/255).description)"
        greenValueChangerSlider.setValue(Float((crayonDetailInfo?.green ?? 255)/255), animated: true)
        
        blueValueLabelSlider.text = "BLUE: \(Float((crayonDetailInfo?.blue ?? 255)/255).description) "
        blueValueChangerSlider.setValue(Float((crayonDetailInfo?.blue ?? 255)/255), animated: true)
        
        alphaValueLabelStepper.text = "ALPHA Value 1.0"
    }
    
//    func colorSegueAction() {
//        guard let colorTextName = crayon
//            else{
//                fatalError("something is wrong")
//        }
//        navigationItem.title = colorTextName.name
//        }
    
//    @IBAction func redValueChangeSlider(_ sender: UISlider) {
//    }
//
//    @IBAction func greenValueChangeSlider(_ sender: UISlider) {
//    }
//
//    @IBAction func blueValueChangeSlider(_ sender: UISlider) {
//    }
//
//    @IBAction func alphaValueChangeStepper(_ sender: UIStepper) {
//    }
    
    
}
