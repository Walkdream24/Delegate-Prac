//
//  ViewController.swift
//  実践課題
//
//  Created by dev室 インターン３ on 2018/10/31.
//  Copyright © 2018年 dev室 インターン３. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
  
    
   weak var downloadDelegate: downloadDelegate?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
   
        self.downloadDelegate?.downladWithDeskTask()
    }
        
        
    

    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("start")
    }
    
    
    

}

