//
//  AkcesoriaViewController.swift
//  Metal-stop-bar
//
//  Created by Dominik Kowalski on 27/08/2019.
//  Copyright © 2019 Dominik Kowalski. All rights reserved.
//

import UIKit

class AkcesoriaViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tabBarItem = UITabBarItem(title: TextStrings.AkcesoriaVC.barItemTitle, image: UIImage(named: TextStrings.AkcesoriaVC.imageName), tag: 4)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
