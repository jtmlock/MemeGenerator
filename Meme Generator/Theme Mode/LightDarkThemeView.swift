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
            //
            remodalToggle()
            UIAnimation.animatedImages(imageview: self.moonImageView)
            alterSystemViewBackground()
        } else {
            UIState.setSystemThemeMode(darkmode: false)
            //
            remodalToggle()
            UIAnimation.animatedImages(imageview: self.sunImageView)
            alterSystemViewBackground()
        }
    }
        
    // @note: Function that updates the state of the UISwicth button base
    // on the theme state.
    public func updateLightDarkToggle() {
        remodalToggle()
        alterSystemViewBackground()
    }
    
    // @note: Remodal the toggle apperance base on the mode selected
    private func remodalToggle(){
        let toggleState = UIState.hasDarkModeState()
        
        if (toggleState) {
            ligthDark_toggle.isOn = toggleState
            ligthDark_toggle.onTintColor = UIColor.systemGray6
            ligthDark_toggle.thumbTintColor = UIColor.white
            
        } else {
            ligthDark_toggle.isOn = toggleState
            ligthDark_toggle.onTintColor = UIColor.systemGray6
            ligthDark_toggle.thumbTintColor = UIColor.black
        }
    }
    
    // @note: This function alters the view and the view controller system background
    private func alterSystemViewBackground() {
        // find the parent UIViewController
        let parentController : UIViewController? = findParentviewController(forView: self)
        
        if parentController != nil {
            // for the parent UIViewController

        overrideUserInterface(viewController: parentController!)
            
            // also force the reusable view to use system backgroun
            self.view.backgroundColor = UIColor.systemBackground
        }
    }
    // @note: Function that update the current passed view controller to
    //          its intended mode base on the theme state.
    //
    // @param   viewController     The passed view controller that has to
    //                              to change theme.
    private func overrideUserInterface(viewController : UIViewController) {
        if (UIState.hasDarkModeState()) {
            viewController.overrideUserInterfaceStyle = .dark
        } else {
            viewController.overrideUserInterfaceStyle = .light
        }
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
