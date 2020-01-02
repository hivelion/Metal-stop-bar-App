//
//  ProductsViewController.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 28/08/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import UIKit


class ProductsViewController: UITableViewController {

    var categoryNumb: Int!
    
    @IBOutlet var tblJSON: UITableView!

    var msproducts = [MSProduct]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.msproducts.removeAll()
        tblJSON.reloadData()
        print(self.msproducts)
        getMSData(kategoria: categoryNumb)
    }
    
    func getMSData (kategoria:Int){
        APIClient.getProducts(for: kategoria) { [weak self] (products, error) in
            guard let self = self else { return }
            self.msproducts = products
            self.tblJSON.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextStrings.CellIDs.jsonCell, for: indexPath)
        let productms = msproducts[indexPath.row]
        
        cell.textLabel?.text = productms.name ?? ""
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msproducts.count
    }
    
}
