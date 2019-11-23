//
//  SelectedColorValueChangerVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jaheed Haynes on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SelectedColorValueChangerVC: UIViewController {
    
    var crayonDetailInfo: Crayon?
    
    @IBOutlet weak var colorNameInCCView: UILabel!
    
    @IBOutlet var colorBackground: UIView!
    
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
              
        colorNameInCCView.text = crayonDetailInfo?.name
         
         redValueChangerSlider.value = Float(crayonDetailInfo!.red/255)
         greenValueChangerSlider.value = Float(crayonDetailInfo!.green/255)
         blueValueChangerSlider.value = Float(crayonDetailInfo!.blue/255)
         alphaValueChangerStepper.value = Double(view.alpha)
        
        colorBackground.backgroundColor = UIColor(red: CGFloat(crayonDetailInfo!.red/255)
        , green: CGFloat(crayonDetailInfo!.green/255), blue: CGFloat(crayonDetailInfo!.blue/255), alpha: 1.0)
    }
    

    //----------------------------------------------

    
   func stepperValue() {
        
        alphaValueChangerStepper.minimumValue = 0.0
        alphaValueChangerStepper.maximumValue = 1.0
        alphaValueChangerStepper.value = 1.0
        alphaValueChangerStepper.stepValue = 0.1
        
    }
    
    
    //----------------------------------------------
    // methods for sliders
    
    @IBAction func redSliderAction(_ sender: UISlider) {
//       redValueChangerSlider.value = sender.value
              colorBackground.backgroundColor = UIColor(red: CGFloat(redValueChangerSlider.value), green: CGFloat(greenValueChangerSlider.value), blue: CGFloat(blueValueChangerSlider.value), alpha: 1)
    }
    
    @IBAction func greensliderAction(_ sender: UISlider) {
       greenValueChangerSlider.value = sender.value
       colorBackground.backgroundColor = UIColor(red: CGFloat(redValueChangerSlider.value), green: CGFloat(greenValueChangerSlider.value), blue: CGFloat(blueValueChangerSlider.value), alpha: view.alpha)
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
     blueValueChangerSlider.value = sender.value
     colorBackground.backgroundColor = UIColor(red: CGFloat(redValueChangerSlider.value), green: CGFloat(greenValueChangerSlider.value), blue: CGFloat(blueValueChangerSlider.value), alpha: view.alpha)
    }
    
    
    //----------------------------------------------
    
    
    @IBAction func colorReset(_ sender: UIButton) {
        redValueChangerSlider.value = Float(crayonDetailInfo!.red/255)
               greenValueChangerSlider.value = Float(crayonDetailInfo!.green/255)
               blueValueChangerSlider.value = Float(crayonDetailInfo!.blue/255)
               
               colorBackground.backgroundColor = UIColor(red: CGFloat(crayonDetailInfo!.red/255)
               , green: CGFloat(crayonDetailInfo!.green/255), blue: CGFloat(crayonDetailInfo!.blue/255), alpha: 1.0)
               
               colorBackground.alpha = 1.0
    }
    
    

}
