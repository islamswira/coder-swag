  //
//  CategoryCell.swift
//  coder-swag
//
//  Created by Islam Swira on 7/17/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!

    func updateViews(category:Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
