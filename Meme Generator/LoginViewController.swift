//
//  LoginViewController.swift
//  Meme Generator
//
//  Created by Mac on 4/9/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    @IBOutlet weak var ligthDark_toggle: UISwitch!  // theme mode toggle btn
    @IBOutlet weak var sunImageView: UIImageView!   // sun theme mode image
    @IBOutlet weak var moonImageView: UIImageView!  // moon theme mode image
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Always update the current UISwitch state base on
        // theme state of the UIState class.
//        UIState.updateLightDarkToggle(toggleBtn: ligthDark_toggle)
    }
    
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
        { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        // commenting out email and phone field - saving as comment though for later use if needed
        
        //user.email = "email@example.com"
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"
        
        user.signUpInBackground{ (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
            }
        }
        
    }
    
    // @note: Eventhandler that will change the system theme base on
    //          the state of the UISwitch controller.
    //
    // @param   sender   The current page (LightDarkMode) UISwitch controller
  /*  @IBAction func event_switchLightDarkMode(_ sender: UISwitch) {
        if (sender.isOn) {
            UIState.setSystemThemeMode(darkmode: true)
            UIState.animatedImages(imageview: self.moonImageView)
        } else {
            UIState.setSystemThemeMode(darkmode: false)
            UIState.animatedImages(imageview: self.sunImageView)
        }
    
        UIState.overrideUserInterface(viewController: self)
        
    }*/
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
