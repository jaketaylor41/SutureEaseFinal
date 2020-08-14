//
//  SellingAidController.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 7/17/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit

class SellingAidController: UITableViewController {
    
    
    

    var sellingAids: [SellingAids] = SellingAids.fetchImages()
    var identities = [String]()
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()

        identities = ["S1", "S2", "S3", "S4"]
        
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sellingAids.count
        
        
    }
    
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sell = tableView.dequeueReusableCell(withIdentifier: "sell", for: indexPath) as! TableViewCellSA
        
     let sellingAid = sellingAids[indexPath.row]
        
     sell.sellingAid = sellingAid
        

        return sell
    }


    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = identities[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.alpha = 0
        UIView.animate(withDuration: 0.75) {
            cell.alpha = 1.0
            
        }
    }
    
    
    
}
