//
//  FirstViewController.swift
//  Navigation
//
//  Created by Abhishek Bhardwaj on 05/01/24.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var vcLabel: UILabel!
    var firstVCString: String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        vcLabel.text = firstVCString
        // Do any additional setup after loading the view.
    }

    @IBAction func goBackPressed(_ sender: UIButton) {
        
        let first2VC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "First2ViewController") as! First2ViewController
        first2VC.first2String = "Hey You are in the Next View Controller."
        navigationController?.pushViewController(first2VC, animated: true)
    }
    deinit {
        print("Deinit for FirstVC is called.")
    }
}
