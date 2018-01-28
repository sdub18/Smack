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


//Segues
let TO_LOGINVC = "toLoginVC"
let TO_CREATEACCOUNTVC = "toCreateAccountVC"
let UNWIND = "unwindToChannelVC"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "Logged In"
let USER_EMAIL = "User Email"

//

