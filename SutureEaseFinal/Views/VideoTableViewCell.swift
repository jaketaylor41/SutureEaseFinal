//
//  VideoTableViewCell.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/26/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit
import AVKit



class VideoTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var videoLabel: UILabel!
    
    @IBOutlet weak var timeStamp: UILabel!
    
    @IBOutlet weak var timeStampView: UIView!
    
    @IBOutlet weak var subLabel: UILabel!
    

    @IBOutlet weak var videoShadow: UIView!
    
    
    var video: Video! {
        
        
        didSet {
            
            updateUI()
            
        }
    }
    
    func updateUI(){
        
        thumbnailImageView.image = UIImage(named: video.thumbnailFileName)
        thumbnailImageView.layer.masksToBounds = true
        thumbnailImageView.layer.cornerRadius = 8.0
        videoLabel.text = video.authorName
        timeStampView.layer.cornerRadius = 3.0
        timeStamp.text = video.timeStamp
        subLabel.text = video.date
        
        videoShadow.layer.shadowColor = UIColor.black.cgColor
        videoShadow.layer.shadowRadius = 14
        videoShadow.layer.shadowOpacity = 0.2
        videoShadow.layer.shadowOffset = CGSize(width: 0, height: 9)
        videoShadow.layer.cornerRadius = 8.0
        
    }
    
    
    
    
    
    
}
