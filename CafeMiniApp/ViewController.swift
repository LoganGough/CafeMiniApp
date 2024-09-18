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
    
    @IBOutlet weak var label: UILabel!
    
    var found = false
    
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
        for(key2, value2) in cart{
            if(item?.lowercased() == key2.lowercased()){
                found = true
                print("found")
                label.text = "ITEM FOUND"
            }
//            else{
//                found = false
//            }
        }
        if(found == false){
            print("didn't find")
            switch item{
            case "Eggs": cart["Eggs"] = quantity; label.text = ""
            case "Milk": cart["Milk"] = quantity; label.text = ""
            case "Cereal": cart["Cereal"] = quantity; label.text = ""
            case "Chicken": cart["Chicken"] = quantity; label.text = ""
            case "Yogurt": cart["Yogurt"] = quantity; label.text = ""
            case "eggs": cart["Eggs"] = quantity; label.text = ""
            case "milk": cart["Milk"] = quantity; label.text = ""
            case "cereal": cart["Cereal"] = quantity; label.text = ""
            case "chicken": cart["Chicken"] = quantity; label.text = ""
            case "yogurt": cart["Yogurt"] = quantity; label.text = ""
            default:label.text = "ERROR"
                found = false
                item = ""
                
            }
        }
            
        
            
            var cartItems = ""
            for(key, value) in cart{
                cartItems = cartItems + "Item: \(key) \nQuantity: \(value)\n"
                count = count + Double(value)
            }
            textView2.text = cartItems
            
        }
        
        
    }


