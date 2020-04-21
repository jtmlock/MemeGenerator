//
//  LightDarkThemeView.swift
//  Meme Generator
//
//  Created by vagrant on 4/21/20.
//  Copyright © 2020 Mac. All rights reserved.
//
//  @author: Raul Rivero Rubio

import UIKit

class LightDarkThemeView: UIView {
    @IBOutlet weak var ligthDark_toggle: UISwitch!  // theme mode toggle btn
    @IBOutlet weak var sunImageView: UIImageView!   // sun theme mode image
    @IBOutlet weak var moonImageView: UIImageView!  // moon theme mode image
    @IBOutlet var view: UIView!         // reusable view
    let nibName = "LightDarkThemeView"  // view name
    
    /*  src: https://medium.com/flawless-app-stories/reusable-uiviews-in-swift-3f9dca63eaf4
    */
    
    // @note: Initialize the decoder
    //
    // @param   aDecoder    the decoder that handles view reusability
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    // @note: A closure of the steps need to initialize the reusable view.
    //          and add the subview.
    func commonInit() {
        guard let view =
            loadViewFromNib()
            else {
                return
            }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    // @note: Function returns the actual view with the nib
    //
    // @return   the subview
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    // "A nib file is a special type of resource file that you use to store the user interfaces of iOS and Mac apps"
    /* src: https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/NibFile.html
    */
    
    // @note: Eventhandler that will change the system theme base on
    //          the state of the UISwitch controller.
    //
    // @param   sender   The current page (LightDarkMode) UISwitch controller
    @IBAction func event_switchLightDarkMode(_ sender: UISwitch) {
        if (sender.isOn) {
          UIState.setSystemThemeMode(darkmode: true)
          UIState.animatedImages(imageview: self.moonImageView)
        } else {
          UIState.setSystemThemeMode(darkmode: false)
          UIState.animatedImages(imageview: self.sunImageView)
        }

        // UIState.overrideUserInterface(viewController: self)
    }
}
