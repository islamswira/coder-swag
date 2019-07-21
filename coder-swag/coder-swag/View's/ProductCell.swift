//
//  ProductCell.swift
//  coder-swag
//
//  Created by Islam Swira on 7/21/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    func updateViews(product:Product){
        productName.text = product.title
        productImage.image = UIImage(named: product.imageName)
        productPrice.text = product.price
    }
    
    
    
}
