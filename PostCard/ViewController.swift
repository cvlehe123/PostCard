//
//  ViewController.swift
//  PostCard
//
//  Created by Charlie  on 11/16/14.
//  Copyright (c) 2014 netGALAXY Studios. All rights reserved.
//
//Test Commit

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var messageLabel: UILabel!
   @IBOutlet weak var enterNameTextField: UITextField!
   @IBOutlet weak var enterMessageTextField: UITextField!
   @IBOutlet weak var newLabel: UILabel!
   
   @IBOutlet weak var mailButton: UIButton!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }
   @IBAction func sendMailButtonPressed(sender: UIButton) {
      messageLabel.hidden = false
      messageLabel.text = enterMessageTextField.text
      messageLabel.textColor = UIColor.redColor()

      enterMessageTextField.text = ""
      enterMessageTextField.resignFirstResponder()
      
      mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
      
      enterNameTextField.resignFirstResponder()
      newLabel.textColor = UIColor.blueColor()
      newLabel.text = enterNameTextField.text
      enterNameTextField.text = ""

      
   }


}

