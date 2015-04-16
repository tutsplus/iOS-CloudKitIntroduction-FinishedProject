//
//  PostViewController.swift
//  CloudBug
//
//  Created by Davis Allie on 3/04/2015.
//  Copyright (c) 2015 TutsPlus. All rights reserved.
//

import UIKit

class Bug {
    var title: String = ""
    var description: String = ""
}

class PostViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var titleInput: UITextField!
    @IBOutlet var descriptionInput: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func postPressed(sender: AnyObject) {
        let bug = Bug()
        bug.title = titleInput.text
        bug.description = descriptionInput.text
        NSNotificationCenter.defaultCenter().postNotificationName("bugPosted", object: self, userInfo: ["bug": bug])
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        textView.text = ""
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
