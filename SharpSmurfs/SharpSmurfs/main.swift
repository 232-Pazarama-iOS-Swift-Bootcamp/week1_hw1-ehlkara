//
//  main.swift
//  SharpSmurfs
//
//  Created by Ehlullah Karakurt on 23.09.2022.
//

import Foundation

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

print("*******SmurfShopSystem*******")
print("Sign Up")
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


class SmurfsProduct: Equatable {
    
    static let shared = SmurfsProduct(productName: "", productPrice: 0, productCategory: "", productColor: "")
    
    static func == (lhs: SmurfsProduct, rhs:SmurfsProduct) -> Bool {
        lhs.productName = rhs.productName
        lhs.productPrice = rhs.productPrice
        lhs.productCategory = rhs.productCategory
        lhs.productColor = rhs.productColor
        return true
    }
    
    var productName: String
    var productPrice: Double
    var productCategory: String
    var productColor: String
    
    class var id: String {
        "000"
    }
    
    class var productName: String {
        "-"
    }
    
    class var productPrice: Double {
        0
    }
    
    class var productCategory: String {
        "-"
    }
    
    class var productColor: String {
        "-"
    }
    
    init(productName: String, productPrice: Double, productCategory: String, productColor:String){
        self.productName = productName
        self.productPrice = productPrice
        self.productCategory = productCategory
        self.productColor = productColor
    }
    
    func addCartToProduct(_ productName: String) {
        self.productName = productName
        
        print("Added to product!")
    }
    
    func PayToProduct(_ productPrice: Double) {
        self.productPrice = productPrice
        
        print("Paid to product!")
    }
    
    static func printId() {
        print(id)
    }
}

var smurfsShopping = SmurfsProduct(productName: "Topuklu Ayakkabı",productPrice: 25,productCategory: "Kadın Ayakkabısı", productColor: "Sarı")

print("Product Detail")

print(smurfsShopping.productName,smurfsShopping.productCategory, smurfsShopping.productColor)

print("Add Product")

let addedProduct = String(readLine()!)

print(addedProduct)

smurfsShopping.addCartToProduct(addedProduct)

print("Please select to pay option(credit card, cash, online pay):")

let paid = String(readLine()!)

if paid == "credit card" || paid == "cash" || paid == "online pay" {
    print("Product Price: \(smurfsShopping.productPrice)")
    smurfsShopping.PayToProduct(smurfsShopping.productPrice)
} else {
    print("Please select correct pay option!")
}
