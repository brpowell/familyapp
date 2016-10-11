//
//  User.swift
//  FamilyApp
//
//  Created by Bryan Powell on 10/9/16.
//  Copyright © 2016 uab. All rights reserved.
//

import Foundation
import Firebase

struct User {
    
    let uid: String
    let email: String
    let firstName: String
    let lastName: String
    let birthday: String
    
    static var activeUser: String?
    
    init(authData: FIRUser, firstName: String, lastName: String, birthday: String) {
        uid = authData.uid
        email = authData.email!
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
    }
    
    func toAnyObject() -> [String: String] {
        return [
            "email": email,
            "firstName": firstName,
            "lastName": lastName,
            "birthday": birthday
        ]
    }
    
    func setActivate() {
        User.activeUser = self.uid
    }
    
}
