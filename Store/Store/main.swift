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

class Item {}

class Receipt {}

class Register {}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

