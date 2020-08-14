//
//  HomePage.swift
//  SutureEaseFinal
//
//  Created by Jacob Taylor on 5/28/19.
//  Copyright © 2019 Jacob Taylor. All rights reserved.
//

import UIKit
import MessageUI


class HomePage: UIViewController, MFMailComposeViewControllerDelegate {
    
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
    
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
           let mailComposerVC = MFMailComposeViewController()
           mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["scott@suturease.com"])
        mailComposerVC.setSubject("Information Request")
           mailComposerVC.setMessageBody(" ", isHTML: false)
        
        return mailComposerVC
        
    }
       
    
    
    @IBAction func requestInfoBtn(_ sender: Any) {
        
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            
            
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            print("Can't send email")
        }
        
    }
    
    
    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    

    
    
    
    
    
    
}
