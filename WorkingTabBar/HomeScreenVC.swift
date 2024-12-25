//
//  ViewController.swift
//  WorkingTabBar
//
//  Created by AydınKaya on 24.12.2024.
//

import UIKit

class HomeScreenVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let tabBarItems = tabBarController?.tabBar.items {
            
            let homeItem = tabBarItems[0]
            let settingsItem = tabBarItems[1]
            
            homeItem.badgeValue = "3"
            settingsItem.badgeValue = "New"
            
        }
      
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        ChangeColor(itemAppearance: appearance.stackedLayoutAppearance)
        ChangeColor(itemAppearance: appearance.inlineLayoutAppearance)
        ChangeColor(itemAppearance: appearance.compactInlineLayoutAppearance)

        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    
    
    func ChangeColor(itemAppearance: UITabBarItemAppearance){
        
        // Selected Status
        	 
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        //Unselected Status
        
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.black
        
    }

    @IBAction func buttonHomeDetail(_ sender: UIButton) {
        
        performSegue(withIdentifier: "HomeDetail", sender: nil)
    }
    
    
    
    
}

