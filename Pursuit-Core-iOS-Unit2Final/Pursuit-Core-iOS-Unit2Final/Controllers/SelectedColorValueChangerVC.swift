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
        currentCrayonValue()
        stepperValue()
        
    }
    

    //----------------------------------------------

    
   func stepperValue() {
        
        alphaValueChangerStepper.minimumValue = 0.0
        alphaValueChangerStepper.maximumValue = 1.0
        alphaValueChangerStepper.value = 1.0
        alphaValueChangerStepper.stepValue = 0.1
        
    }
    
func currentCrayonValue () {
       // colorNameInCCView.text = crayonDetailInfo?.name
        colorBackground.backgroundColor = UIColor(displayP3Red: CGFloat(crayonDetailInfo?.red ?? 255)/255, green: CGFloat(crayonDetailInfo?.green ?? 255)/255, blue: CGFloat(crayonDetailInfo?.blue ?? 255)/255, alpha: 1.0)
        
        redValueLabelSlider.text = "RED: \(Float((crayonDetailInfo?.red ?? 255)/255).description)"
    
        redValueChangerSlider.setValue(Float((crayonDetailInfo?.red ?? 255)/255), animated: true)
        
        greenValueLabelSlider.text = "GREEN: \(Float((crayonDetailInfo?.green ?? 255)/255).description)"
        greenValueChangerSlider.setValue(Float((crayonDetailInfo?.green ?? 255)/255), animated: true)
        
        blueValueLabelSlider.text = "BLUE: \(Float((crayonDetailInfo?.blue ?? 255)/255).description) "
        blueValueChangerSlider.setValue(Float((crayonDetailInfo?.blue ?? 255)/255), animated: true)
        
        alphaValueLabelStepper.text = "ALPHA Value"
    }
    
    
    //----------------------------------------------

    
    @IBAction func redSliderAction(_ sender: UISlider) {
        currentCrayonValue()
    }
    
    @IBAction func greensliderAction(_ sender: UISlider) {
        currentCrayonValue()
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        currentCrayonValue()
    }
    
    
    //----------------------------------------------
    
    
    @IBAction func colorReset(_ sender: UIButton) {
        colorBackground.backgroundColor = UIColor(displayP3Red: CGFloat(crayonDetailInfo?.red ?? 255)/255, green: CGFloat(crayonDetailInfo?.green ?? 255)/255, blue: CGFloat(crayonDetailInfo?.blue ?? 255)/255, alpha: 1.0)
        
        redValueLabelSlider.text = "Red: \(Float((crayonDetailInfo?.red ?? 255)/255).description)"
        redValueChangerSlider.setValue(Float((crayonDetailInfo?.red ?? 255)/255), animated: true)
        
        greenValueLabelSlider.text = "Green: \(Float((crayonDetailInfo?.green ?? 255)/255).description)"
        greenValueChangerSlider.setValue(Float((crayonDetailInfo?.green ?? 255)/255), animated: true)
        
        blueValueLabelSlider.text = "Blue: \(Float((crayonDetailInfo?.blue ?? 255)/255).description) "
        blueValueChangerSlider.setValue(Float((crayonDetailInfo?.blue ?? 255)/255), animated: true)
        
       
        alphaValueLabelStepper.text = "Alpha: \(Double((alphaValueChangerStepper.value)))"
        alphaValueChangerStepper.value = 1.0
    }
    
    
    
    @IBAction func backgroundColorChanger(_ sender: Any) {

        colorBackground.backgroundColor = UIColor(displayP3Red: CGFloat(redValueChangerSlider?.value ?? 255), green: CGFloat(greenValueChangerSlider?.value ?? 255), blue: CGFloat(blueValueChangerSlider?.value ?? 255), alpha: (CGFloat(alphaValueChangerStepper?.value ?? 1)))

        redValueLabelSlider.text = "Red: \(Float((redValueChangerSlider.value)).description)"
        
        greenValueLabelSlider.text = "Green: \(Float((greenValueChangerSlider.value)).description)"
        
        blueValueLabelSlider.text = "Blue: \(Float((blueValueChangerSlider.value)).description)"
        
        alphaValueLabelStepper.text = "Alpha: \(String(format: "%0.1f",(alphaValueChangerStepper.value)))"
    }
    
}
