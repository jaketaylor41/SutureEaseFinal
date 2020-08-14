//
//  ViewController.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/31/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmailTxt: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        EmailTxt.layer.borderWidth = 1
        EmailTxt.layer.cornerRadius = 5
        EmailTxt!.layer.borderColor = UIColor.lightGray.cgColor

    }
    

}
