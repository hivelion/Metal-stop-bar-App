//
//  ProductsViewController.swift
//  Metal-stop-bar REMAKE
//
//  Created by Dominik Kowalski on 28/08/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import UIKit
import ProgressHUD

class ProductsViewController: UITableViewController{
    
    var productInt: Int!
    var nameToSend: String = ""
    var descToSend: String = ""
    var atrToSend: String = ""
    
    var categoryNumb: Int! {
        didSet {
//            print("categoryNumb = ", categoryNumb ?? 0)
            self.getMSData()
        }
    }
    @IBOutlet var progress : UIActivityIndicatorView?
    
    var msproducts = [MSProduct]() {
        didSet {
            self.tableView?.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.refreshControl?.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControl?.addTarget(self, action: #selector(getMSData), for: UIControl.Event.valueChanged)
    }
    
    @objc func getMSData () {
        ProgressHUD.show("Proszę czekać")
        self.progress?.stopAnimating()
        APIClient.getProducts(for: categoryNumb) { [weak self] (products, error) in
            guard let self = self else { return }
            self.refreshControl?.endRefreshing()
            DispatchQueue.main.async {
                self.progress?.stopAnimating()
                ProgressHUD.dismiss()
                self.msproducts = products
//                print("self.msproducts = ", self.msproducts)
            }
        }
    }

    //MARK: table view delegate & datasource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msproducts.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextStrings.CellIDs.jsonCell, for: indexPath)
        let productms = msproducts[indexPath.row]

        
        
        cell.textLabel?.text = productms.name ?? ""
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        productInt = indexPath.row
        let product = msproducts[productInt]
        
        nameToSend = product.name ?? ""
        descToSend = product.short_description ?? ""
//        atrToSend = attribute.name ?? ""
        
//        self.performSegue(withIdentifier: "infoViewAlu", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        DispatchQueue.main.async {
                if segue.identifier == "infoViewAlu" {
            let controller = segue.destination as! ProduktInfoViewController
                
                    controller.productName = self.nameToSend
                    controller.productDesc = self.descToSend


            }
        }
        
    }

}
