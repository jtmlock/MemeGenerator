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
    private func commonInit() {
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
    private func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    // "A nib file is a special type of resource file that you use to store the user interfaces of iOS and Mac apps"
    /* src: https://developer.apple.com/library/archive/documentation/General/Conceptual/DevPedia-CocoaCore/NibFile.html
    */
    
    //---------------------------------------------------------------------------
    // @note: Eventhandler that will change the system theme base on
    //          the state of the UISwitch controller.
    //
    // @param   sender   The current page (LightDarkMode) UISwitch controller
    @IBAction func event_switchLightDarkMode(_ sender: UISwitch) {
        
        if (sender.isOn) {
            UIState.setSystemThemeMode(darkmode: true)
            self.animationProcess(imageview: self.moonImageView)
        } else {
            UIState.setSystemThemeMode(darkmode: false)
            self.animationProcess(imageview: self.sunImageView)
        }
        
        // find the parent UIViewController
        let parentController = findParentviewController(forView: self)
        
        if parentController != nil {
            // for the parent UIViewController
            UIState.overrideUserInterface(viewController: parentController!)
            
            // also force the reusable view to use system backgroun
            self.view.backgroundColor = UIColor.systemBackground
        }
        
        // Always update the current UISwitch state base on
        // theme state of the UIState class.
        UIState.updateLightDarkToggle(toggleBtn: ligthDark_toggle)
    }
    
    // official documentation
    /* src: https://developer.apple.com/documentation/swift/dictionary */
    
    // @note Function that encapsulate the animation process.
    //
    // @param   the imageview that will be process
    private func animationProcess(imageview : UIImageView) {
        // Key Strings
        let ASC = "ascending"
        let DESC = "descending"
        
        // Dictionary of animations paramerter [struct]
        let animation = [ASC: AnimateParams(duration: 0.3, delay: 0, options: []),
                         DESC: AnimateParams(duration: 0.3, delay: 0, options: [])]
        
        // Dictionary of Coordinates [struct]
        let coordinates = [ASC: Coordinates(xcoord: 0, ycoord: 25),
                           DESC: Coordinates(xcoord: 0, ycoord: -10)]
        
        UIAnimation.animatedImages(imageview: imageview,
                                   params: animation[ASC]!, coord: coordinates[ASC]!)
        
        UIAnimation.animatedImages(imageview: imageview,
                                   params: animation[DESC]!, coord: coordinates[DESC]!)
    }
    /*
     src:
     https://codereview.stackexchange.com/questions/143440/accessing-a-uiviews-parent-uiviewcontroller-using-the-uiresponder-chain     */
    // @note: Function finds the current view (parent) UIViewController.
    // @pßaram      view     the current view.
    //
    // @return      The (parent) [UIViewController] if found OR [nil] if not found
    private func findParentviewController(forView view: UIView) -> UIViewController? {
        var responder: UIResponder? = view

        repeat {
            responder = responder?.next
            if let vc = responder as? UIViewController {
                return vc
            }
        } while responder != nil

        return nil
    }
    
    
}
