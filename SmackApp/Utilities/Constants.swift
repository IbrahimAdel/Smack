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
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"
let URL_FIND_USER_BY_EMAIL = "\(BASE_URL)user/byEmail/"


//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannelVC"
let TO_AVATAR_PICKER = "toAvatarPicker"

//colors
let SmackPurplePlaceholder = #colorLiteral(red: 0.3254901961, green: 0.4196078431, blue: 0.7764705882, alpha: 0.5)

//Notification (Events)
let USER_DATA_CHANGED = Notification.Name("UserDataChanged")

//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "logged in"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charet=utf-8"
]

let BEARER_HEADER = [
    "Authorization": "Bearer \(AuthService.instance.authToken)",
    "Content-Type": "application/json; charet=utf-8"
]
