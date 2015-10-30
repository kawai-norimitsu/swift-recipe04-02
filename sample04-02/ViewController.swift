//
//  ViewController.swift
//  sample04-02
//
//  Created by 河合 徳光 on 2015/10/30.
//  Copyright © 2015年 norimitsu kawai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menuBtnPushed(sender: AnyObject) {
        let alertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .ActionSheet)
        let okAction = UIAlertAction(title: "add", style: .Default) { (action: UIAlertAction) -> Void in
            self.label.text = "add"
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .Cancel, handler: nil)
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }

    @IBAction func deleteBtnPushed(sender: AnyObject) {
        label.text = "delete"
    }
}
