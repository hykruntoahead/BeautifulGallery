//
//  ViewController.swift
//  BeautifulGallery
//
//  Created by 何育昆 on 2017/4/13.
//  Copyright © 2017年 何育昆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautifulPicker: UIPickerView!
    let beauties = ["范冰冰","李冰冰","王菲","杨幂","周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        绑定
        beautifulPicker.dataSource  = self
        beautifulPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    页面跳转触发的函数
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //跳转action标示 --- 自定义
        if(segue.identifier == "GoToGallery"){
            let index = beautifulPicker.selectedRow(inComponent: 0)
            var imageName: String?
            switch index {
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"
            default:
                imageName = nil
            }
//            获取目标viewController实例
            let vc = segue.destination
                as! GalleryViewController;
            
            vc.imageName = imageName;
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
    
    
    
    

}

