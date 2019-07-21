//
//  Product.swift
//  coder-swag
//
//  Created by Islam Swira on 7/21/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title:String
    private(set) public var imageName: String
    private(set) public var price: String
    
    
    init(title:String, imageName:String, price:String){
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
