//
//  KoreanViewController.swift
//  BeautifulGallery
//
//  Created by 何育昆 on 2017/4/14.
//  Copyright © 2017年 何育昆. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func facebookShare(_ sender: Any) {
        let  controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook);
        controller.setInitialText("一起来玩女神画廊app吧！");
        controller.add(image.image)
        self.present(controller,animated: true,completion: nil);
        
    }
    
  
    @IBAction func twitterShare(_ sender: Any) {
        let  controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTwitter);
        controller.setInitialText("一起来玩女神画廊app吧！");
        controller.add(image.image)
        self.present(controller,animated: true,completion: nil);

        
    }
    
    @IBAction func weiboShare(_ sender: Any) {
        let  controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeSinaWeibo);
        controller.setInitialText("一起来玩女神画廊app吧！");
        controller.add(image.image)
        self.present(controller,animated: true,completion: nil)
        
    }
    
    
}
