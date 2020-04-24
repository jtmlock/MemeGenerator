//
//  AlbumViewController.swift
//  Meme Generator
//
//  Created by Mac on 4/19/20.
//  Copyright © 2020 Mac. All rights reserved.
//

import UIKit
import AlamofireImage
import Parse

class AlbumViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var albumView: UIImageView!
    @IBOutlet weak var albumCommentField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAlbumSubmit(_ sender: Any) {
        let post = PFObject(className: "Posts")
        
        post["caption"] = albumCommentField.text
        post["author"] = PFUser.current()!
        
        let imageData = albumView.image!.pngData()
        let file = PFFileObject(data: imageData!)
        
        post["image"] = file
        
        post.saveInBackground { (success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
            } else {
                print("error")
            }
        }
    
    }
    
    @IBAction func onAlbumButton(_ sender: Any) {
        let albumPicker = UIImagePickerController()
        albumPicker.delegate = self
        albumPicker.allowsEditing = true
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            albumPicker.sourceType = .savedPhotosAlbum
        } else {
            albumPicker.sourceType = .photoLibrary
        }
        
        present(albumPicker, animated: true, completion: nil)
    }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image = info[.editedImage] as! UIImage

            let size = CGSize(width: 300, height: 300)
            let scaledImage = image.af_imageScaled(to: size)
            
            albumView.image = scaledImage
        
            dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func onAlbumToCamera(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onBackFromAlbumToGenerator(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
