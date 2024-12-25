//
//  SettingsDetailVC.swift
//  WorkingTabBar
//
//  Created by AydınKaya on 25.12.2024.
//

import UIKit

class SettingsDetailVC: UIViewController {
    @IBOutlet weak var labelPrivateData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func buttonAlert(_ sender: UIButton) {
        
        let alertControl = UIAlertController(title: "tittle", message: "message", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { action in
            
             
        })
        
        alertControl.addAction(okAction)
        alertControl.addAction(cancelAction)
        
        self.present(alertControl, animated: true)
    }
    
    @IBAction func ButtonActionSheet(_ sender: UIButton) {
        
        let actionSheetControl = UIAlertController(title: "Action Sheet", message: "Message Sheet ", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        actionSheetControl.addAction(okAction)
        actionSheetControl.addAction(cancelAction)
        
        self.present(actionSheetControl, animated: true)
        
    }
    
    

    @IBAction func buttonPrivateAlert(_ sender: UIButton) {
        
        let alertControl = UIAlertController(title: "tittle", message: "message", preferredStyle: .alert)
        
        alertControl.addTextField { tf in
            
            tf.placeholder = "İnsert Data"
            tf.keyboardType = .numberPad
            tf.isSecureTextEntry = true
            
        }
    
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { action in
            
            let textField = alertControl.textFields![0] as UITextField
            
            if let receivedData = textField.text {
                self.labelPrivateData.text = receivedData
            }

             
        })
        
        
        
        alertControl.addAction(saveAction)
        
        self.present(alertControl, animated: true)
    }
    

}
