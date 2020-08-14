//
//  Video.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/26/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import Foundation

struct Video
{
    
    let authorName: String
    let videoFileName: String
    let description: String
    let thumbnailFileName: String
    let timeStamp: String
    let date: String
    
    static func fetchVideos() -> [Video] {
        
        let v1 = Video(authorName: "CrossBow Animation", videoFileName: "CrossBow Animation", description: "Local Video", thumbnailFileName: "v1", timeStamp: "1:25", date: "Scott Heneveld • 02/25/16")
        let v2 = Video(authorName: "SecurusEP Animation", videoFileName: "securusAnimation", description: "Local Video", thumbnailFileName: "v2", timeStamp: "1:08", date: "Scott Heneveld • 04/18/16")
        let v3 = Video(authorName: "CrossBow Overview", videoFileName: "crossbowOverview", description: "Local Video", thumbnailFileName: "v3", timeStamp:"2:16", date: "Scott Heneveld • 05/29/18")
        let v4 = Video(authorName: "CrossBow Reproducible Suture Placement", videoFileName: "CrossBow Reproducible suture placement - Dr Mirhashemi", description: "Local Video", thumbnailFileName: "v4", timeStamp: "1:16", date: "Scott Heneveld • 08/31/18")
        let v5 = Video(authorName: "Dr. Coates Testimonial", videoFileName: "Dr. Coates Testimonial720", description: "Local Video", thumbnailFileName: "v5", timeStamp: "1:45", date: "Scott Heneveld • 05/29/18")
        let v6 = Video(authorName: "Dr. Mirhashemi Testimonial - Mod-thin patient technique66", videoFileName: "Dr. Mirhashemi Testimonial - Mod-thin patient technique", description: "Local Video", thumbnailFileName: "v6", timeStamp: "2:19", date: "Scott Heneveld • 05/30/18")
        let v7 = Video(authorName: "CrossBow with Adaptor - 3 stitch technique", videoFileName: "CrossBow with Adaptor - 3 stitch technique", description: "Local Video", thumbnailFileName: "v7", timeStamp: "8:29", date: "Scott Heneveld • 01/10/19")
        return [v1, v2, v3, v4, v5, v6, v7]
    
    }
    
    
    
    
}
