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

class editingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var catchPost: PFObject!
    var catchCell: UITableViewCell!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        let cell = catchCell
        
        return cell!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let user = catchPost["author"] as! PFUser
        //editingTextField.text = user.username
        print(user.username!)
        let imageFile = catchPost["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)
        
        print("user = " + user.username!)
        print("url = " + urlString)
        
        // Do any additional setup after loading the view.
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
