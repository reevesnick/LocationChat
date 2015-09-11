//
//  LoginScreen.swift
//  LocationChat
//
//  Created by Neegbeah Reeves on 9/10/15.
//
//

import Foundation
import UIKit

class LoginScreen: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var comfirmPassword: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
