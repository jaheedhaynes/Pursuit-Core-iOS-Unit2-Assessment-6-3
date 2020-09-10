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
    
    var alphaDefaultValue = Float(1)
    lazy var alphaValueUpdate = alphaDefaultValue
    
    var redValue: Float = 0.2 {
        didSet {
            redValueLabelSlider.text = String(format: "%.02f", redValueChangerSlider.value)
        }
    }
    
    var greenValue: Float = 0.2 {
        didSet {
            greenValueLabelSlider.text = String(format: "%.02f", greenValueChangerSlider.value)
        }
    }
    
    var blueValue: Float = 0.2 {
        didSet {
            blueValueLabelSlider.text = String(format: "%.02f", blueValueChangerSlider.value)
        }
    }
    
    var alphaValue: Double = 1.0 {
        didSet {
            alphaValueLabelStepper.text = String(format: "%.01f", alphaValueChangerStepper.value)
        }
    }
    
    
    
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
    
    //----------------------------------------------
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        alphaValue = sender.value
               
               self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: CGFloat(alphaValue))

        print("stepper pressed")
    }
    
    
    

}
