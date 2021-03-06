//
//  VideosTableViewController.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/26/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideosTableViewController: UITableViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        
        
        
    }
    
    
    

    
    
    
    func addNavBarImage(){
        
        let navController = navigationController!
        
        let image = #imageLiteral(resourceName: "SutureEase+Logo")
        
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - (image.size.width)
        let bannerY = bannerHeight / 2 - (image.size.height) / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
    }
    
    var videos: [Video] = Video.fetchVideos()
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell
        
        
        let video = videos[indexPath.row]
    
        
        cell.video = video
        
       
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        playVideo(at: indexPath)
    }
    
    
    func playVideo(at indexPath: IndexPath){
        
        let selectedVideo = videos[indexPath.row]
        if let videoPath = Bundle.main.path(forResource: selectedVideo.videoFileName, ofType: "mp4"){
            let videoPathURL = URL(fileURLWithPath: videoPath)
            player = AVPlayer(url: videoPathURL)
            playerViewController.player = player
            
        } else {
            debugPrint("video not found")
            return
        }
        
        
        self.present(playerViewController, animated: true, completion: {

            self.playerViewController.player?.play()
        })

    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.alpha = 1.0
        }
    }
}
