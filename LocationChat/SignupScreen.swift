//
//  SignupScreen.swift
//  LocationChat
//
//  Created by Neegbeah Reeves on 9/10/15.
//
//

import Foundation
import UIKit



class SignupScreen : UIViewController{
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var twitter: UIButton!
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
