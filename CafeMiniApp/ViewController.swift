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
    
    
    @IBOutlet weak var textField2: UITextField!
    
    var count = 0.0
    
    var food: [String] = ["Eggs", "Milk", "Cereal", "Chicken", "Yogurt"]
    var prices: [Double] = [5.99, 7.99, 10.99, 14.99, 4.99]
    var cart: [String: Int] = [:]

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
        var blah = textField2.text!
        var quantity = Int(blah) ?? 0
        switch item{
        case "Eggs": cart["Eggs"] = quantity
        case "Milk": cart["Milk"] = quantity
        case "Cereal": cart["Cereal"] = quantity
        case "Chicken": cart["Chicken"] = quantity
        case "Yogurt": cart["Yogurt"] = quantity
        case "eggs": cart["Eggs"] = quantity
        case "milk": cart["Milk"] = quantity
        case "cereal": cart["Cereal"] = quantity
        case "chicken": cart["Chicken"] = quantity
        case "yogurt": cart["Yogurt"] = quantity
        default:print("blah")
        }
        
        var cartItems = ""
        for(key, value) in cart{
            cartItems = cartItems + "Item: \(key) \nQuantity: \(value)\n"
            count = count + Double(value)
        }
        textView2.text = cartItems
        
    }
    

}

