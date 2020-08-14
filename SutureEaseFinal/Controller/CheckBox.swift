//
//  CheckBox.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 11/19/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class CheckBox: UIButton {

    //images
    let checkedImage = UIImage(named: "Selected")!
    let uncheckedImage = UIImage(named: "Unselected")!
    
    //bool property
    var isChecked: Bool = false{
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, for: [])
            }else{
                self.setImage(uncheckedImage, for: [])
            }
        }
    }
    
    override func awakeFromNib(){
        self.addTarget(self, action: Selector("buttonClicked"), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    func buttonClicked(sender:UIButton){
        if(sender == self){
            if isChecked == true{
                isChecked = false
            } else{
                isChecked = true
            }
        }
    }
}
