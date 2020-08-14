//
//  TableViewCell.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/28/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableViewImage: UIImageView!
    
    @IBOutlet weak var brochureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}
