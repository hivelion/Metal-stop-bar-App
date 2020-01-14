
//  ProduktInfoViewController.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 13/09/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import UIKit
import ProgressHUD


class ProduktInfoViewController: UITableViewController {
    
    @IBOutlet weak var infoProductImg: UIImageView!
    @IBOutlet weak var infoProductName: UILabel!
    @IBOutlet weak var infoProductDesc: UILabel!
    

    var productName: String = ""
    var productDesc: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.refreshControl?.endRefreshing()
        DispatchQueue.main.async {
            ProgressHUD.show("Proszę czekać")
            self.changeData(name: self.productName, desc: self.productDesc)
            self.title = self.productName
        }
        
    }


    func changeData(name: String, desc: String){
        infoProductName.text = name
        infoProductDesc.text = desc
        ProgressHUD.dismiss()
    }

}
