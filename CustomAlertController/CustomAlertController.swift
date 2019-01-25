//
//  CustomAlertController.swift
//  CustomAlertController
//
//  Created by MT312 on 2018/03/18.
//  Copyright © 2018 MT312. All rights reserved.
//

import UIKit

class CustomAlertController: UIAlertController {
    
    var checkedIndex = NSNotFound
    
    var contentViewController: UIViewController! {
        didSet {
            title = nil
            message = nil
            setValue(contentViewController, forKey: "contentViewController")
        }
    }
    
    private func setupCheckmark() {
        if 0 ..< actions.count ~= checkedIndex {
            actions[checkedIndex].setValue(true, forKey: "checked")
        }
    }
    
    // Prevent crash
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
    }
    
    // MARK: - ViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCheckmark()
    }
}
