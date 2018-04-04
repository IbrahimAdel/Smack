//
//  Constant.swift
//  SmackApp
//
//  Created by Ibrahim Hussein on 04/04/2018.
//  Copyright © 2018 Ibrahim Hussein. All rights reserved.
//

import Foundation
typealias completionHandler = (_ Success:Bool) -> ()

//URL

let BASE_URL = "https://chatapp1999.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannelVC"


//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "logged in"
let USER_EMAIL = "userEmail"
