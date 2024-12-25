//
//  HomeScreenDetail.swift
//  WorkingTabBar
//
//  Created by AydınKaya on 25.12.2024.
//

import UIKit

class HomeScreenDetail: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var TextFieldCustom: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentedController: UISegmentedControl!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderLabel.text = String(slider.value)
        indicator.isHidden = true
        

    }
    
    @IBAction func buttonDo(_ sender: UIButton) {
        
        if let receivedData = TextFieldCustom.text {
            
            label.text = receivedData
        }
        
    }
    
    @IBAction func buttonCar(_ sender: UIButton) {
        
        imageView.image = UIImage(named: "car")
    }
    
    
    @IBAction func buttonMoped(_ sender: Any) {
        imageView.image = UIImage(named: "moped")
    }
    
    @IBAction func buttonSwitch(_ sender: UISwitch) {
        
        if sender.isOn{
            imageView.isHidden = false
           
        }else {
            imageView.isHidden = true

        }
    }
    
    @IBAction func segmentedChanges(_ sender: UISegmentedControl) {
        
        
        
        let selectedIndex =  sender.selectedSegmentIndex
        let selectedCetgory = sender.titleForSegment(at: selectedIndex)
        
        label.text = selectedCetgory 
        
        
    }
    
    
    @IBAction func buttonSlider(_ sender: UISlider) {
        
        sliderLabel.text = String(sender.value)
        
    }
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        
        labelStepper.text = String(sender.value)
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
        
    }
    
    @IBAction func buttonStop(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
        
    }
}
