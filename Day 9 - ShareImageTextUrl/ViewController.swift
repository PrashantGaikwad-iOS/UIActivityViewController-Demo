//
//  ViewController.swift
//  Day 9 - ShareImageTextUrl
//
//  Created by Prashant Gaikwad on 4/3/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var shareText: UIButton!
  @IBOutlet weak var shareAll: UIButton!
  @IBOutlet weak var shareImage: UIButton!
  
  
  let text = "My text here..."
  let image = UIImage(named:"apple.jpg")
  let myWebsite = "My Url"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    shareText.layer.cornerRadius = 5
    shareText.clipsToBounds = true
    
    shareAll.layer.cornerRadius = 5
    shareAll.clipsToBounds = true
    
    shareImage.layer.cornerRadius = 5
    shareImage.clipsToBounds = true
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func shareOnlyText(_ sender: UIButton) {
    
    let textShare = [ text ]
    let activityViewController = UIActivityViewController(activityItems: textShare , applicationActivities: nil)
    activityViewController.popoverPresentationController?.sourceView = self.view
    self.present(activityViewController, animated: true, completion: nil)
  }
  
  @IBAction func shareOnlyImage(_ sender: UIButton) {
    
    let imageShare = [ image! ]
    let activityViewController = UIActivityViewController(activityItems: imageShare , applicationActivities: nil)
    activityViewController.popoverPresentationController?.sourceView = self.view
    self.present(activityViewController, animated: true, completion: nil)
  }
  
  
  @IBAction func shareAll(_ sender: UIButton) {
    
    let shareAll = [text , image! , myWebsite] as [Any]
    let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
    activityViewController.popoverPresentationController?.sourceView = self.view
    self.present(activityViewController, animated: true, completion: nil)
  }
  
  
  
}

