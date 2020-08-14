//
//  TableViewController.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/28/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit




class TableViewController: UITableViewController {

    
    

    
    
    var brochures: [Brochures] = Brochures.fetchTitles()
    var identities = ["B","C"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableView.automaticDimension
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
        return brochures.count
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 500;//Choose your custom row height
    }
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell

        let brochure = brochures[indexPath.row]
        
        
        cell.brochure = brochure
        

        return cell
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
