//
//  ImageView.swift
//  実践課題
//
//  Created by dev室 インターン３ on 2018/10/31.
//  Copyright © 2018年 dev室 インターン３. All rights reserved.
//

import UIKit

class ImageView: UIImageView, downloadDelegate {
    
    
    
    func downladWithDeskTask() {
        
        let url = URL(string: "http://localhost/test.png")
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: url!) {
            (data: Data!, response: URLResponse!, error: NSError!) in
            if data != nil {
                let img = UIImage(data: Data)
                dispatch_async(dispatch_get_main_queus()) { () in
                    self.imageView.image = img
                }
                
            }
            
            session.invalidateAndCancel()
        }
        
        task.resume()
        
    }
    


}
