//
//  AlbumViewController.swift
//  Meme Generator
//
//  Created by Mac on 4/19/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    @IBOutlet weak var reu_viewLightDarkTheme: LightDarkThemeView!  // reusable view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Always update the current UISwitch state base on
        // theme state of the UIState class.
        reu_viewLightDarkTheme.updateLightDarkToggle()
    }
}
