//
//  ViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToFirstVC(_ sender: UIButton) {
        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        firstVC.firstVCString = "This String is being set from Main VC."
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
    @IBAction func navigateToSecondVC(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.secondVCString = "This String is being set from Main VC."
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

