//
//  UIViewControllerExtension.swift
//  TestPhotoView
//
//  Created by DerekYang on 2017/10/18.
//  Copyright © 2017年 LBD. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController
{
    
    
    public func showImgPickVC(delegae: (UIImagePickerControllerDelegate & UINavigationControllerDelegate)) {
        
        let imagePickerVC = UIImagePickerController()
        
        // 設定相片的來源為行動裝置內的相本
        imagePickerVC.sourceType = .photoLibrary
        imagePickerVC.delegate = delegae
        
        // 設定顯示模式為popover
        imagePickerVC.modalPresentationStyle = .popover
        let popover = imagePickerVC.popoverPresentationController
        // 設定popover視窗與哪一個view元件有關連
        popover?.sourceView = self.view
        
        // 以下兩行處理popover的箭頭位置
        popover?.sourceRect = self.view.bounds
        popover?.permittedArrowDirections = .any
        
        self.present(imagePickerVC, animated: true, completion: nil)
    }
    

    public func alert(title: String, msg: String, img: UIImage? = nil,
                      act1: String? = nil, act2: String? = nil, cancel: String?,
                      handleAct1:  ((Any?) -> ())? = nil,
                      handleAct2: ((Any?) -> ())? = nil,
                      handleCancel: ((Any?) -> ())? = nil)
    {
        let imgView = UIImageView(image: img)
        imgView.frame = self.view.frame
        
        DispatchQueue.main.async {
            self.view.addSubview(imgView)
        }
        
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .actionSheet)
        
        if let _act1 = act1 {
            let alertAct1 = UIAlertAction(title: _act1, style: .default,
                                          handler: { (action: UIAlertAction!) -> Void in
                                            handleAct1?(action)
                                            
                                            DispatchQueue.main.async {
                                                imgView.removeFromSuperview()
                                            }

            })
            alertVC.addAction(alertAct1)
        }
        
        if let _act2 = act2 {
            let alertAct2 = UIAlertAction(title: _act2, style: .default,
                                          handler: { (action: UIAlertAction!) -> Void in
                                            handleAct2?(action)
                                            
                                            DispatchQueue.main.async {
                                                imgView.removeFromSuperview()
                                            }

            })
            alertVC.addAction(alertAct2)
        }
        
        if let _cancel = cancel {
            let actCancel = UIAlertAction(title: _cancel, style: .cancel,
                                          handler: { (action: UIAlertAction!) -> Void in
                                            handleCancel?(action)
                                            
                                            DispatchQueue.main.async {
                                                imgView.removeFromSuperview()
                                            }

            })
            alertVC.addAction(actCancel)
        }
       
       
        
        self.present(alertVC, animated: true)
    }
}
