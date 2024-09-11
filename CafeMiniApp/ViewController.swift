//
//  ViewController.swift
//  CafeMiniApp
//
//  Created by LOGAN GOUGH on 9/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textView2: UITextView!
    
    
    var count = 0
    
    var food: [String] = ["Eggs", "Milk", "Cereal", "Chicken", "Yogurt"]
    var prices: [Double] = [5.99, 7.99, 10.99, 14.99, 4.99]
    var cart: [String: Double] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var menu = ""
        
        for i in 0..<food.count{
            menu = menu + "Item \(i + 1): \(food[i]) \nPrice: \(prices[i]) \n"
        }
        textViewOutlet.text = menu
        
        
    }
    
    
    @IBAction func buttonCart(_ sender: UIButton) {
        var item = textField1.text
        switch item{
        case "Eggs": cart["Eggs"] = 5.99
        case "Milk": cart["Milk"] = 7.99
        case "Cereal": cart["Cereal"] = 10.99
        case "Chicken": cart["Chicken"] = 14.99
        case "Yogurt": cart["Yogurt"] = 4.99
        case "eggs": cart["Eggs"] = 5.99
        case "milk": cart["Milk"] = 7.99
        case "cereal": cart["Cereal"] = 10.99
        case "chicken": cart["Chicken"] = 14.99
        case "yogurt": cart["Yogurt"] = 4.99
        default:print("blah")
        }
        var cartItems = ""
        for(key, value) in cart{
            cartItems = cartItems + "Item \(count): \(key) \n Price: \(value)\n"
            count = count + 1
        }
        textView2.text = cartItems
    }
    

}

