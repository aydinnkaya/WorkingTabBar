//
//  SettingsVC.swift
//  WorkingTabBar
//
//  Created by AydınKaya on 25.12.2024.
//

import UIKit

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func buttonSettingsDetail(_ sender: UIButton) {
        performSegue(withIdentifier: "SettingsDetail", sender: nil)
    }
    
}
