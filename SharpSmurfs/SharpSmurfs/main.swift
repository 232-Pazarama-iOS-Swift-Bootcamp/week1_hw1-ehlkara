//
//  main.swift
//  SharpSmurfs
//
//  Created by Ehlullah Karakurt on 23.09.2022.
//

import Foundation

//print("Please enter your name:")
//
//if let name = readLine() {
//    print("Hello, \(name)!")
//} else {
//    print("Why are you being so coy?")
//}
//
//print("TTFN!")

protocol Profilable {
    var id: String {get set}
    var username: String {get set}
    var password: String {get set}
}

struct User: Profilable {
    var id:String = "-"
    var username:String = "-"
    var password: String = "-"
    
    init() {
        id="-"
        username = "-"
        password = "-"
    }
    
    init(id: String, username: String, password:String){
        self.id = id
        self.username = username
        self.password = password
    }
    
    mutating func signup(_ username:String,_ password:String) {
        self.username = username
        self.password = password
        
        print("Signup successfully...")
    }
    mutating func signin(_ username:String,_ password:String) {
        self.username = username
        self.password = password
        
        print("Signin successfully...")
    }
}

var systemUser = User()

print("Username:")
var Username = String(readLine()!)

print(Username)

print("Password:")

var Password = String(readLine()!)

print(Password)

systemUser.signup(Username, Password)

print("*************************")

print("Login to system!")

print("Username")
var loginUsername = String(readLine()!)

print(loginUsername)

print("Password")
var loginPassword = String(readLine()!)

print(loginPassword)

if Username == loginUsername && Password == loginPassword {
    systemUser.signin(loginUsername, loginPassword)
} else {
    print("Please check yours password or username!")
}
