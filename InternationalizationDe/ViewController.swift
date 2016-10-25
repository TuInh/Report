//
//  ViewController.swift
//  InternationalizationDe
//
//  Created by Le Thi Van Anh on 10/20/16.
//  Copyright © 2016 Le Thi Van Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var vietnameseBtn: UIButton!
    @IBOutlet weak var englishBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passLabel: UILabel!   
    @IBOutlet weak var nameLabel: UILabel!
    
    var bundle: NSBundle = NSBundle(){
        didSet{
            localizeString()
        }
    }
    
    func localizeString(){
        nameTextField.placeholder =  NSLocalizedString("kUserName", bundle: bundle, comment: "hello")
        passTextField.placeholder = NSLocalizedString("kPassword", bundle: bundle, comment: "hello")
        nameLabel.text =  NSLocalizedString("kName", bundle: bundle, comment: "hello")
        passLabel.text =  NSLocalizedString("kPwd", bundle: bundle, comment: "hello")
        loginBtn.setTitle(NSLocalizedString("kLogin", bundle: bundle, comment: "hello"), forState: UIControlState.Normal)
        englishBtn.setTitle(NSLocalizedString("kEnglish", bundle: bundle, comment: "hello"), forState: UIControlState.Normal)
        vietnameseBtn.setTitle(NSLocalizedString("kVietNam", bundle: bundle, comment: "hello"), forState: UIControlState.Normal)
        
    }

    @IBAction func chooseEnglish(sender: AnyObject) {
        LanguageManager.sharedInstance.setLocale("en")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
    }
    
    @IBAction func chooseVietNam(sender: AnyObject) {
        LanguageManager.sharedInstance.setLocale("vi")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

