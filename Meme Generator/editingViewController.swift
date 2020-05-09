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
    
    func textToImage(drawText: NSString, inImage: UIImage, atPoint: CGPoint) -> UIImage{

    // Setup the font specific variables
    let textColor = UIColor.white
    let textFont = UIFont(name: "Helvetica Bold", size: 12)!

    // Setup the image context using the passed image
    let scale = UIScreen.main.scale
    UIGraphicsBeginImageContextWithOptions(inImage.size, false, scale)

    // Setup the font attributes that will be later used to dictate how the text should be drawn
    let textFontAttributes = [
        NSAttributedString.Key.font: textFont,
        NSAttributedString.Key.foregroundColor: textColor,
    ]

    // Put the image into a rectangle as large as the original image
    inImage.draw(in: CGRect(x: 0, y: 0, width: inImage.size.width, height: inImage.size.height))

    // Create a point within the space that is as bit as the image
    let rect = CGRect(x: atPoint.x, y: atPoint.y, width: inImage.size.width, height: inImage.size.height)

    // Draw the text into an image
    drawText.draw(in: rect, withAttributes: textFontAttributes)

    // Create a new image out of the images we have created
        let newImage = UIGraphicsGetImageFromCurrentImageContext()

    // End the context now that we have the image we need
    UIGraphicsEndImageContext()

    //Pass the image back up to the caller
    return newImage!
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
