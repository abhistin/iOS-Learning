//
//  SecondViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var vc2Label: UILabel!
    var secondVCString: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        vc2Label.text = secondVCString
        // Do any additional setup after loading the view.
    }

    @IBAction func goBackPressed(_ sender: UIButton) {
        let second2VC = storyboard?.instantiateViewController(withIdentifier: "Second2ViewController") as! Second2ViewController
        second2VC.second2String = "Hey you are in Second screen in SecondVC."
        navigationController?.pushViewController(second2VC, animated: true)
    }
    
    deinit {
        print("Deinit for SecondVC is called.")
    }
    
}
