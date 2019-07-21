//
//  DataService.swift
//  coder-swag
//
//  Created by Islam Swira on 7/17/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslops Logo Graphic", imageName: "hat01.png", price: "$18"),
        Product(title: "Devslops Logo Hat Black", imageName: "hat02.png", price: "$22"),
        Product(title: "Devslops Logo Hat White", imageName: "hat03.png", price: "$33"),
        Product(title: "Devslops Logo Snapback", imageName: "hat04.png", price: "$30")
    ]
    
    private let hoddies = [
        Product(title: "Devslops Logo Hoodie Gray", imageName: "hoodie01.png", price: "$33"),
        Product(title: "Devslops Logo Hoodie Red", imageName: "hoodie02.png", price: "$50"),
        Product(title: "Devslops Hoodie Gray", imageName: "hoodie03.png", price: "$60"),
        Product(title: "Devslops Hoodie Black", imageName: "hoodie04.png", price: "$100")
    ]
    
    private let shirts = [
        Product(title: "Devslops Logo Shirt Black", imageName: "shirt01.png", price: "$33"),
        Product(title: "Devslops Badge Shirt Black", imageName: "shirt02.png", price: "$50"),
        Product(title: "Devslops Logo Shirt Red", imageName: "shirt03.png", price: "$60"),
        Product(title: "Devslops Logo Shirt White", imageName: "shirt04.png", price: "$100"),
        Product(title: "Devslops Delegate White", imageName: "shirt05.png", price: "$100")
    ]
    
    private let digitalGods = [Product] ()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) ->[Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
           return getHats()
        case "DIGITAL":
            return getDigitalGods()
        default:
            return getShirts()
        }
    }
    
    
    func getHats()-> [Product]{
        return hats
    }
    
    func getHoodies()-> [Product]{
        return hoddies
    }
    
    func getShirts()-> [Product]{
        return shirts
    }
    
    func getDigitalGods()-> [Product]{
        return digitalGods
    }
    
}

