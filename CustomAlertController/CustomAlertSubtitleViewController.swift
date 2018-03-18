//
//  CustomAlertSubtitleViewController.swift
//  CustomAlertController
//
//  Created by MT312 on 2018/03/18.
//  Copyright © 2018 MT312. All rights reserved.
//

import UIKit

class CustomAlertSubtitleViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    
    var image: UIImage!
    var text: String!
    var detailText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 4;
        imageView.layer.borderColor = UIColor(white: 0.88, alpha: 1).cgColor
        imageView.layer.borderWidth = 1
        
        imageView.image = image
        textLabel.text = text
        detailTextLabel.text = detailText
    }
}
