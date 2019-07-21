//
//  ViewController.swift
//  coder-swag
//
//  Created by Islam Swira on 7/17/19.
//  Copyright © 2019 com.Islam Swira. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource , UITableViewDelegate {
   
    
    
    @IBOutlet weak var categoryTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Caregory = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: Caregory)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ProductsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil)
            ProductsVC.initProducts(category: sender as! Category)
            
           
        }
    }

}

