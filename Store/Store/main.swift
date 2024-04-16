//
//  main.swift
//  Store
//
//  Created by Ted Neward on 2/29/24.
//

import Foundation

protocol SKU {
    
    var name: String { get }
    func price() -> Int
    
}

class Item: SKU{
    var name: String
    var priceOfItem: Int
    
    
    init(name: String, priceEach: Int) {
        self.name = name
        self.priceOfItem = priceEach
    }
    
    func price() -> Int{
        return self.priceOfItem
    }
}

class Receipt {
    
    var listOfItems: [SKU] = []
    var subTotal: Int = 0
    
    func items() -> [SKU] {
        return self.listOfItems
    }
    
    
    func output() -> String {
        var finalReceipt = ""
        for item in self.listOfItems {
            finalReceipt += ("\n\(item.name): $\(Double(item.price()) / 100.0)")
        }
        let printReceipt = """
Receipt:\(finalReceipt)
------------------
TOTAL: $\(Double(self.total()) / 100.0)
"""
        return printReceipt
    }
    
    func addItem(item: SKU) {
        self.listOfItems.append(item)
        self.subTotal += item.price()
    }
    
    
    func total() -> Int {
        return self.subTotal
    }
}
    


class Register {
    
    var receipt: Receipt = Receipt()
    
    
    func scan(_ item: SKU){
        receipt.addItem(item: item)
    }
    
    func subtotal() -> Int {
        return receipt.total()
    }
    
    func total() -> Receipt {
           let tempReceipt = self.receipt
           self.receipt = Receipt()
           return tempReceipt
       }
    
}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

