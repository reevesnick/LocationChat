//
//  LoginScreen.swift
//  LocationChat
//
//  Created by Neegbeah Reeves, Brittany Simmions, and Nino Roberston on 9/10/15.
//
//

import Foundation
import UIKit
import FBSDKLoginKit
import Twitter
import TwitterKit

class LoginScreen: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButon: UIButton!
    
    //var fbl: FBLoginView = FBLoginView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Twitter Render Button and Login
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (session != nil) {
                print("signed in as \(session!.userName)");
            } else {
                print("error: \(error!.localizedDescription)");
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(sender: AnyObject){
        
        let userEmail = username.text;
        let userPassword = password.text;
        
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringForKey("username");
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringForKey("password");
        
        if (userEmailStored == userEmail){
            if (userPasswordStored == userPassword){
                // Login Successful
                
                NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
                
                self.dismissViewControllerAnimated(true, completion: nil);
            }
        }
        
    }
    
    @IBAction func facebookLoginButtonTapped(sender: AnyObject){
        
    }
    
}
