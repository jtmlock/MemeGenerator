//
//  editingViewController.swift
//  Meme Generator
//
//  Created by Mac on 5/8/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
import Parse
import Alamofire
import AlamofireImage

class editingViewController: UIViewController {
    
    var catchPost: PFObject!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var editorText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let user = catchPost["author"] as! PFUser
        editorText.text = catchPost["caption"] as? String
        //editingTextField.text = user.username
        //print(user.username!)
        let imageFile = catchPost["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        imageView.af.setImage(withURL: url)
        
        //print("user = " + user.username!)
        //print("url = " + urlString)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveMeme(_ sender: Any) {
    
        func textToImage(drawText text: String, inImage image: UIImage, atPoint point: CGPoint) -> UIImage {
            let textColor = UIColor.white
            let textFont = UIFont(name: "Helvetica Bold", size: 12)!

            let scale = UIScreen.main.scale
            UIGraphicsBeginImageContextWithOptions(image.size, false, scale)

            let textFontAttributes = [
                NSAttributedString.Key.font: textFont,
                NSAttributedString.Key.foregroundColor: textColor,
                ] as [NSAttributedString.Key : Any]
            image.draw(in: CGRect(origin: CGPoint.zero, size: image.size))

            let rect = CGRect(origin: point, size: image.size)
            text.draw(in: rect, withAttributes: textFontAttributes)

            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()

            return newImage!
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
