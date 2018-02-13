//
//  LoginModel.swift
//  Login
//
//  Created by user134565 on 2/12/18.
//  Copyright © 2018 user134565. All rights reserved.
//

import Foundation
class LoginModel{
    func verifyUserandPassword(userID: String, password: String)-> Bool{
        if(userID == password){
            return true;
        }else{
            return false;
        }
    }
}
