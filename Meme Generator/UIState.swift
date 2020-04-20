//
//  UIState.swift
//  Meme Generator
//
//  Created by vagrant on 4/20/20.
//  Copyright © 2020 Mac. All rights reserved.
//
//  @author: Raul Rivero Rubio

import Foundation
import UIKit        // related to UIcontrollers

class UIState {
    static private var _inDarkMode : Bool = false   // the theme state of the screen
    
    // @note: Function that updates the state of the UISwicth button base
    // on the theme state.
    //
    // @param   toggleBtn   UISwitch controller.
    static func updateLightDarkToggle(toggleBtn: UISwitch) {
        if (_inDarkMode) {
            toggleBtn.isOn = true
            
        } else {
            toggleBtn.isOn = false
        }
    }
    
    // @note: Function update the theme state base one the passed boolean
    // value
    //
    // @param   darkmode    The state pass by the function caller.
    static func setSystemThemeMode(darkmode: Bool) {
        if (darkmode) {
            self._inDarkMode = true
        } else {
            self._inDarkMode = false
        }
    }
    
    // @note: Function that returns the current theme state of
    // the application.
    //
    // @return  true -> dark mode. false -> light mode.
    static func hasDarkModeState() -> Bool {
        return self._inDarkMode
    }
    
    // @note: Function that update the current passed view controller to
    //          its intended mode base on the theme state.
    //
    // @param   viewController     The passed view controller that has to
    //                              to change theme.
    static func overrideUserInterface(viewController : UIViewController) {
        if (_inDarkMode) {
            viewController.overrideUserInterfaceStyle = .dark
        } else {
            viewController.overrideUserInterfaceStyle = .light
        }
    }
}
