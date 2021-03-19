//
//  Continent.swift
//  footbalPlayerPriceApp
//
//  Created by Choi Joon on 2021/03/19.
//

import Foundation

struct Continent {
    
    private(set) public var title : String
    private(set) public var imageName : String
    
    init(title : String, imageName : String) {
        self.title = title
        self.imageName = imageName
    }
}
