//
//  Brochures.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/28/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import Foundation


struct Brochures
{
    
    let title: String
    let brochureImage: String
    
    static func fetchTitles() -> [Brochures] {
        
        
        let b2 = Brochures(title: "Closure Technique", brochureImage: "b2")
        let b3 = Brochures(title: "Competitor Bariatric Guide", brochureImage: "b3")
        return [b2, b3]
        
    
    }
    
    
    
}
