//
//  category.swift
//  coder-swag
//
//  Created by Islam Swira on 7/17/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import Foundation

struct Category{
    
    private(set) public var title:String
    private(set) public var imageName: String
    
    init(title:String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
}
