//
//  ViewController2.swift
//  Card Holder
//
//  Created by Zulwiyoza Putra on 8/12/16.
//  Copyright © 2016 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    var image: UIImage!
    
    @IBAction func saveButton(sender: AnyObject) {
        
        performSegueWithIdentifier("saveSegue", sender: self)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(animated: Bool) {
        // Do any additional setup after loading the view.
        imageView.image = image
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
