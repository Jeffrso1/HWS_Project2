//
//  ViewController.swift
//  project2_Returns
//
//  Created by Jefferson Silva on 23/05/21.
//

import UIKit

class ViewController: UIViewController {

    let flag1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let flag2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let flag3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(flag1)
        view.addSubview(flag2)
        view.addSubview(flag3)
        
        setupFlags()
    }
    
    func setupFlags() {
        NSLayoutConstraint.activate([
            flag2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            flag2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flag2.heightAnchor.constraint(equalTo: flag2.widthAnchor, multiplier: 0.5),
            flag2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: UIScreen.main.bounds.width * 0.2),
            flag2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: (-1) * UIScreen.main.bounds.width * 0.2),
            
            NSLayoutConstraint(item: flag2, attribute: .top, relatedBy: .equal, toItem: flag1, attribute: .bottom, multiplier: 1, constant: 50),
            flag1.leadingAnchor.constraint(equalTo: flag2.leadingAnchor),
            flag1.trailingAnchor.constraint(equalTo: flag2.trailingAnchor),
            flag1.widthAnchor.constraint(equalTo: flag2.widthAnchor),
            flag1.heightAnchor.constraint(equalTo: flag2.heightAnchor),
            
            NSLayoutConstraint(item: flag3, attribute: .top, relatedBy: .equal, toItem: flag2, attribute: .bottom, multiplier: 1, constant: 50),
            flag3.leadingAnchor.constraint(equalTo: flag2.leadingAnchor),
            flag3.trailingAnchor.constraint(equalTo: flag2.trailingAnchor),
            flag3.widthAnchor.constraint(equalTo: flag2.widthAnchor),
            flag3.heightAnchor.constraint(equalTo: flag2.heightAnchor),
        ])
        
        flag1.imageView?.layer.borderWidth = 1
        flag1.imageView?.layer.borderColor = UIColor.black.cgColor
        flag1.setImage(UIImage(named: "ireland"), for: .normal)
        flag1.imageView?.contentMode = .scaleAspectFill
        
        flag2.imageView?.layer.borderWidth = 1
        flag2.imageView?.layer.borderColor = UIColor.black.cgColor
        flag2.setImage(UIImage(named: "uk"), for: .normal)
        flag2.imageView?.contentMode = .scaleAspectFill
        
        flag3.imageView?.layer.borderWidth = 1
        flag3.imageView?.layer.borderColor = UIColor.black.cgColor
        flag3.setImage(UIImage(named: "monaco"), for: .normal)
        flag3.imageView?.contentMode = .scaleAspectFill
    }
    
}

