//
//  SellingAids.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 7/17/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import Foundation



struct SellingAids {
    
    
    
    let sellingAidImage: String
    let sellingAidLabel: String
    
    
    static func fetchImages() -> [SellingAids]{
        
        let s1 = SellingAids(sellingAidImage: "s1", sellingAidLabel: "Reproduceable Suture Placement")
        
        let s2 = SellingAids(sellingAidImage: "s2", sellingAidLabel: "BMI Less Than 32")
        
        let s3 = SellingAids(sellingAidImage: "s3", sellingAidLabel: "Single Inverted Stitch")
        
        let s4 = SellingAids(sellingAidImage: "s4", sellingAidLabel: "CrossBow Procedural Steps")
        
        return [s1, s2, s3, s4]
        
        
    }
    
    
    
    
    
    
}
