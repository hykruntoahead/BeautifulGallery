//
//  GalleryViewController.swift
//  BeautifulGallery
//
//  Created by 何育昆 on 2017/4/13.
//  Copyright © 2017年 何育昆. All rights reserved.
//

import UIKit
//导入社交框架
import Social

class GalleryViewController : UIViewController {
    public var imageName : String?
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        if let name = imageName {
            image.image = UIImage(named:name)
            switch name {
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxun":
                navigationItem.title = "周迅"
            default:
                navigationItem.title = "女神"
            }
        }else{
            
        }
        
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
        self.present(controller,animated: true,completion: nil);
    }
    
    @IBAction func shareTapped(_ sender: Any) {
        let  controller : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTencentWeibo);
        controller.setInitialText("一起来玩女神画廊app吧！");
        controller.add(image.image)
        self.present(controller,animated: true,completion: nil);
    }
}
