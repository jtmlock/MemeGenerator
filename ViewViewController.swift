//
//  ViewViewController.swift
//  
//
//  Created by Mac on 5/9/20.
//
/*
import UIKit
import TinyConstraints

class ViewViewController: UIViewController {
        
    lazy var  imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = .withRenderingMode(.alwaysOriginal)
        return imageView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = """
        Nattu Adnana
        @reallynattu
        """
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Merge into image", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }
    
    lazy var outputImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contactMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()

        // Do any additional setup after loading the view.
    }
    
    
    fileprivate func setupViews(){
        navigationItem.title = "Extensions Fun | View"
        view.backgroundColor = .white
        
        view.addSubView(imageView)
        imageView.addSubView(label)
        view.addSubView(button)
        view.addSubView(outputImageView)
        
        imageView.edgesToSuperview(excluding: .buttom, usingSafeArea: true)
        imageView.height(view.frame.width / 2)
        
        label.center(in: imageView)
        
        button.topToBottom(of: imageView, offset: 12)
        button.rightToSuperview()
        button.leftToSuperview()
        button.height(40)
        
        outputImageView.topToBottom(of: button, offset: 12)
        outputImageView.rightToSuperview()
        outputImageView.leftToSuperview()
        outputImageView.height(view.frame.width / 2)
    }
        
    @objc fileprivate func handleButtonTapped(){
        
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
*/
