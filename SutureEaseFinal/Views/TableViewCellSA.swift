//
//  TableViewCellSA.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 7/22/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class TableViewCellSA: UITableViewCell {


    @IBOutlet weak var sellingAidImg: UIImageView!
    
    
    @IBOutlet weak var sellingAidLabel: UILabel!
    
    @IBOutlet weak var saView: UIView!
    
    
    var sellingAid: SellingAids! {
        
        didSet {
            
            updateUI()
            
        }
        
    }
    
    
    func updateUI(){
        
        sellingAidImg.image = UIImage(named: sellingAid.sellingAidImage)
        sellingAidLabel.text = sellingAid.sellingAidLabel
        
        
        saView.layer.shadowColor = UIColor.black.cgColor
        saView.layer.shadowRadius = 14
        saView.layer.shadowOpacity = 0.2
        saView.layer.shadowOffset = CGSize(width: 0, height: 9)
        
    }
    
    
    
}
