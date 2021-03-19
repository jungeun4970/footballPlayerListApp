//
//  Player.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/20.
//

import Foundation

struct Player {
    
    private(set) public var imageName : String
    private(set) public var name : String
    private(set) public var price : String
    
    init(name : String, imageName : String,price : String) {
        self.name = name
        self.imageName = imageName
        self.price = price
    }
}
