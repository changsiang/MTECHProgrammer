//
//  LoginViewController.swift
//  Login
//
//  Created by user134565 on 2/12/18.
//  Copyright © 2018 user134565. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textUserId: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBAction func buttonLogin(sender: AnyObject) {
        let login = LoginModel();
        let result:Bool = login.verifyUserandPassword(userID: textUserId.text!, password: textPassword.text!)
        if (!result){
            printMessage(name: "Incorrect Username or Password!")
        }else{
            printMessage(name: "Welcome to application! Hello from VS Code")
        }
    }
    
    func printMessage(name: String){
        let alertPopup : UIAlertController =  UIAlertController(title: "Alert", message: name, preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel){
            action -> Void in
        }
        alertPopup.addAction(cancelAction)
        self.present(alertPopup, animated: true, completion: nil)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
