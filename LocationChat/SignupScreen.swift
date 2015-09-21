//
//  SignupScreen.swift
//  LocationChat
//
//  Created by Neegbeah Reeves on 9/10/15.
//
//

import Foundation
import UIKit
import SwiftyJSON



class SignupScreen : UIViewController{
    
    @IBOutlet var username: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var comfirmPassword: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var twitter: UIButton!
    
   @IBAction func registerButtonTapped(sender: AnyObject){
    let userEmail = username.text; // Username
    let userPassword = password.text;
    let userComfirmPassword = comfirmPassword.text;
    
    if (userEmail?.isEmpty == nil || userPassword?.isEmpty == nil || userComfirmPassword == nil){
    // Display an alert
        let alertController = UIAlertController(title: "Error", message: "One of the field are empty.", preferredStyle: UIAlertControllerStyle.Alert)
         alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
    
        self.presentViewController(alertController, animated: true, completion: nil)
        
        return;
    }
    
    if (userPassword != userComfirmPassword){
        let alertController = UIAlertController(title: "Error", message:
            "Password does not match. Please check", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        return;
    }
    
  /*
    let myurl = NSURL(string: "https://510lc.dank.site/userRegister.php");
    let request = NSMutableURLRequest(URL: myurl!);
    request.HTTPMethod = "POST";
    
    let postString = "username=\(userEmail)&password=\(userPassword)";
    request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding);
    
    let task = NSURLSession.sharedSession().dataTaskWithRequest(request){
        data, response, error in
        
        if error != nil{
            print("error=\(error)")
            return
        }
        var err: NSError?
        
        
        var json = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
        if let parseJSON = json{
            var resultValue = parseJSON["status"] as? String!
            print("result: \(resultValue)")
            
            var isUserRegisterd:Bool = false;
            if (resultValue == "Sucess"){
                isUserRegisterd = true;
            }
            
            var messageToDisplay:String = parseJSON["message"] as? String!;
            if (!isUserRegisterd){
                messageToDisplay = parseJSON["message"] as? String!;
            }
            
            dispatch_sync(dispatch_get_main_queue(), {
                let alertController = UIAlertController(title: "Success", message:
                    "Successfully log in!", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
                    });
                }
            }
    task.resume()
    
  */
    
    // Store Data. For Testing
    NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "username");
    NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey: "password");
    NSUserDefaults.standardUserDefaults().synchronize();
    
    
    // Success Alert View
    let alertController = UIAlertController(title: "Success", message: "Registration Successful", preferredStyle: UIAlertControllerStyle.Alert)
    alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
    
    self.presentViewController(alertController, animated: true, completion: nil)
    
    
    }
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
