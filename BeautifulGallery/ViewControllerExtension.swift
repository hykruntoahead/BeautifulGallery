//
//  ViewControllerExtension.swift
//  BeautifulGallery
//
//  Created by 何育昆 on 2017/4/13.
//  Copyright © 2017年 何育昆. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource{
    //pickview 个数
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // pickview 行数
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beauties.count
        
    }

}

extension ViewController:UIPickerViewDelegate{
    // 绑定 pickview 数据(根据行数返回对应显示字符串)
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row];
    }
}
