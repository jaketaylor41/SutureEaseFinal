//
//  TableViewCell.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/28/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var brochureImage: UIImageView!
    
    @IBOutlet weak var brochureLabel: UILabel!
    

    @IBOutlet weak var brochureShadow: UIView!
    
    var brochure: Brochures! {
        
        
        didSet {
            
            updateUI()
            
        }
    }
    
    func updateUI(){
        
        brochureImage.image = UIImage(named: brochure.brochureImage)
        brochureLabel.text = brochure.title
        
        brochureShadow.layer.shadowColor = UIColor.black.cgColor
        brochureShadow.layer.shadowRadius = 14
        brochureShadow.layer.shadowOpacity = 0.2
        brochureShadow.layer.shadowOffset = CGSize(width: 0, height: 9)
       
    }
    
    

}
