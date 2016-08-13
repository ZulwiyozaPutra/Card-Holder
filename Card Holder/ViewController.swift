//
//  ViewController.swift
//  Card Holder
//
//  Created by Zulwiyoza Putra on 7/31/16.
//  Copyright © 2016 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var globalImage = [String: UIImage]()

    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        picker .dismissViewControllerAnimated(true, completion: nil)
        globalImage["pickedImage"]=info[UIImagePickerControllerOriginalImage] as? UIImage
        performSegueWithIdentifier("shitSegue", sender: self)
    }
    
    @IBAction func scanButton(sender: AnyObject) {
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
            let cardScan = UIImagePickerController()
            cardScan.delegate = self
            cardScan.sourceType = UIImagePickerControllerSourceType.Camera;
            cardScan.allowsEditing = false
            self.presentViewController(cardScan, animated: true, completion: nil)
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationController : ViewController2 = segue.destinationViewController as! ViewController2
        destinationController.image = globalImage["pickedImage"]
    }
}

