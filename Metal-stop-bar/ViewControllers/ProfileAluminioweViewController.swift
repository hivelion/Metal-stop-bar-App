//
//  HomeViewController.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 27/08/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import UIKit

class ProfileAluminioweViewController: UIViewController {

    var categoryNumber: Int = 24
    
    @IBAction func goToProducts(_ sender: UIButton) {
        
        categoryNumber = sender.tag
        performSegue(withIdentifier: TextStrings.ProfileAluVC.goToProducts, sender: self)
        print(sender.tag)
        print("categoryNumber ma wartość: \(categoryNumber)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: TextStrings.ProfileAluVC.barItemTitle, image: UIImage(named: TextStrings.ProfileAluVC.imageName), tag: 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToProducts" {
            let destinationController = segue.destination as! ProductsViewController
            destinationController.msproducts.removeAll()
            destinationController.categoryNumb = categoryNumber
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
