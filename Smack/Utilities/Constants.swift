//
//  Constants.swift
//  Smack
//
//  Created by Sam DuBois on 1/26/18.
//  Copyright © 2018 Sam DuBois. All rights reserved.
//

import Foundation
import UIKit

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://smackc.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Colors
let smackPurplePlaceHolder = #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 0.5)

//Notification Constants
let NOTIF_USER_DATA_CHANGED = Notification.Name("NotifUserDataChanged")

//Segues
let TO_LOGINVC = "toLoginVC"
let TO_CREATEACCOUNTVC = "toCreateAccountVC"
let UNWIND = "unwindToChannelVC"
let TO_GENERATE_AVATAR = "toGenerateAvatar"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "Logged In"
let USER_EMAIL = "User Email"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
